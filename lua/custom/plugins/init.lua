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
        },
      }
      vim.cmd.colorscheme 'catppuccin-mocha'
      vim.cmd.hi 'Comment gui=none'
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
      map('p', 'Git push', '[P]ush commits')
    end,
  },
}
