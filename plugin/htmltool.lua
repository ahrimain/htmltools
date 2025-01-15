vim.api.nvim_create_user_command('HtmlSetup', function ()
    vim.api.nvim_buf_set_lines(0, 0, 9, false, {
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

    })
end, {})