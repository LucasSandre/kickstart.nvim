-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {

  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false,
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha',
        integrations = {
          mason = {
            enabled = true,
          },
          mini = {
            enabled = true,
            indentscope_color = 'mocha',
          },
        },
      }
      vim.cmd.colorscheme 'catppuccin'
      --vim.cmd.hi 'Comment gui=none'
    end,
  },
  {
    'tpope/vim-fugitive',
    config = function()
      map = function(postfix, cmd, description)
        vim.keymap.set('n', '<leader>g' .. postfix, '<cmd>' .. cmd .. '<cr>', { desc = description })
      end
      map('s', 'G', 'Open git [S]tatus')
      map('c', 'Git commit', '[C]ommit staged changes')
      map('l', 'Git pull', 'Pu[l]l remote changes')
      map('h', 'Git push', 'Pus[h] commits')
      map('f', 'Git fetch', '[F]etch remote changes')
    end,
  },
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('nvim-tree').setup {}
      vim.keymap.set('n', '<leader>st', '<cmd>NvimTreeToggle<cr>', { desc = '[S]earch File [T]ree.' })
    end,
  },
}
