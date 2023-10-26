-- [[ Basic Keymaps ]]
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- sneaky exit insert mode
vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('i', 'kk', '<Esc>')
vim.keymap.set('i', 'jk', '<Esc>')

-- primagen
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "gd", "gdzz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste without replacing register
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Tabs
vim.keymap.set('n', '<Tab>', ':bnext<CR>')
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>')
vim.keymap.set('n', '<leader>bQ', ':%bd|e#|bd#<CR>')
vim.keymap.set('n', '<leader>bq', ':bp <BAR> bd #<CR>')

-- Git
vim.keymap.set('n', '<leader>gb', ':Git blame<CR>')
vim.keymap.set('n', '<leader>gl', require('telescope.builtin').git_commits, { desc = '[G]it [L]og' })
vim.keymap.set('n', '<leader>lg', ':LazyGit<CR>')

-- Telescope
vim.keymap.set('n', '<leader>t', require('telescope.builtin').resume, { desc = 'Telescope Resume' })
vim.keymap.set('n', '<leader>p', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>re', require('telescope.builtin').oldfiles, { desc = '[S]earch R[E]cent]' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
-- vim.keymap.set("n", "<leader>cd", require("telescope").extensions.zoxide.list)
vim.keymap.set("n", "<leader>cd", ':SearchSession<CR>')
vim.keymap.set('n', '\\', require('telescope.builtin').live_grep, { desc = 'Search by Grep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
-- vim.keymap.set('n', '<leader>sp', require('telescope.builtin').projects, { desc = '[S]earch [P]rojects' })
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer]' })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', '<S-F2>', vim.diagnostic.goto_next)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<F2>', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

-- navigation between panes
vim.keymap.set('n', '<leader><Left>', ':wincmd h<CR>')
vim.keymap.set('n', '<leader><Down>', ':wincmd j<CR>')
vim.keymap.set('n', '<leader><Up>', ':wincmd k<CR>')
vim.keymap.set('n', '<leader><Right>',':wincmd l<CR>')

vim.keymap.set('n', '<leader>gpt',':ChatGPT<CR>')

vim.keymap.set('n', '<leader>ra','*:%s//')

vim.keymap.set('n', '<leader>zf', '$V%zf')

vim.keymap.set('n', '<F5>', ':update<CR>')
vim.keymap.set('n', '<c-s>', ':update<CR>')
vim.keymap.set('i', '<c-s>', '<C-O>:update<CR>')

-- Abbreviations
vim.cmd('abb log console.log()<Left>')
vim.cmd('abb af () =>')
vim.cmd('abb sfy JSON.stringify(x, null, 2)<Esc>Fxa<Backspace>')
vim.cmd('abb debug <pre>{JSON.stringify(x, null, 2)}</pre><Esc>Fxa<Backspace>')
vim.cmd('abb tsignore // @ts-ignore')
vim.cmd('abb rsf export const x = (props: Props) => (<></>)<Esc>Fxa<Backspace><Backspace>')
vim.cmd('abb rfc export const x = () =><Esc>Fxs')
vim.cmd('abb uss const [] = useState()<Esc>F[a')
vim.cmd('abb fun function x() {}<Esc>Fxa<Backspace>')
vim.cmd('abb ustr const { t } = useTranslation()')
vim.cmd('abb usd const { x } = useDiagnosticsStore()<Esc>Fxs')
vim.cmd('abb tr {t(\'\')}<Esc>F\'i')


vim.api.nvim_set_keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true })
