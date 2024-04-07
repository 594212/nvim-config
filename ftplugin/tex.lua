vim.api.nvim_set_option('langmap',
    'йq,цw,уe,кr,ет,нy,гu,ши,щo,зp,х[,ъ],фa,ыs,вd,аf,пg,рh,оj,лk,дl,э\',яз,чx,сc,мv,иb,ть,ьm,ю.,ЙQ,ЦW,УE,КR,ЕT,НY,ГU,ШI,ЩO,ЗP,Х{,Ъ},ФA,ЫS,ВD,АF,ПG,РH,ОJ,ЛK,ДL,Ж:,Э",ЯZ,ЧX,СC,МV,ИB,ТN,ЬM,Б<,Ю>')
-- vim.keymap.set("n", "<leader>bla", "<cmd>%s/\\left[\\{\\[(]\ze\(\(\s*\n\)\@!\)/\0\r/g<CR>");
-- vim.keymap.set("n", "<leader>bra", "<cmd>%s/\\right[\\{\\[(]\ze\(\(\s*\n\)\@!\)/\0\r/g<CR>");
-- vim.keymap.set("n", "<leader>blb", "<cmd>%s/\(\n\s*\)\@<!\\left[\\{\\[(]/\r\0/g<CR>");
-- vim.keymap.set("n", "<leader>brb", "<cmd>%s/\(\n\s*\)\@<!\\right[\\}\\[)]/\r\0/g<CR>");

-- \(bar\)\@<=foo  ---------- barfoo foo
-- bar\(\(foo\)\@=\) -------- barfoo bar
-- foo\ze\(\(bar\)\@!\) - foobar foo
-- \(foo\)\@<!bar ----------- foobar bar
-- \\left[\\{\\[(]\ze\(\(\s*\n\)\@!\)
-- \(\n\s*\)\@<!\\left[\\{\\[(]
vim.opt.conceallevel = 2
vim.api.nvim_set_hl(0, 'Conceal', { ctermbg = nil, ctermfg = 5 })
