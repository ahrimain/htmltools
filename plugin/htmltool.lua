local htmlsetup = {
    '<html lang="en">',
    '<head>',
    '    <meta charset="UTF-8">',
    '    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
    '    <title>Document</title>',
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
    vim.fn.writefile({
        '/*l ink css to html with <link> tag */'
    }, 'assets/main.css')
end, {})