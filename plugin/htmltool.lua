local htmlsetup = {
    '<html lang="en">',
    '<head>',
    '    <meta charset="UTF-8">',
    '    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
    '    <title>Document</title>',
    '    <link rel="stylesheet" href="assets/main.css">',
    '</head>',
    '<body>',
    '',
    '</body>',
    '</html>'

}

vim.api.nvim_create_user_command('HtmlSetup', function ()
    vim.api.nvim_buf_set_lines(0, 0, 9, false, htmlsetup)
end, {})

vim.api.nvim_create_user_command('HtmlAssets', function ()
    vim.fn.mkdir('assets', '-p')
    vim.fn.mkdir('assets/scripts', '-p')
    vim.fn.writefile({
        '/*l ink css to html with <link> tag */'
    }, 'assets/main.css')
end, {})

vim.api.nvim_create_user_command('HtmlPro', function (opts)
    local name = tostring(opts.args)
    vim.fn.mkdir(name, '-p')
    vim.cmd('cd '..name)
    vim.cmd("HtmlAssets")

    local buf = vim.api.nvim_create_buf(true, false)
    vim.api.nvim_buf_set_name(buf, "index.html")
    vim.api.nvim_set_current_buf(buf)
    vim.cmd("HtmlSetup")

end, { nargs = 1})