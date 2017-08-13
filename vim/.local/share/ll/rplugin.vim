" python3 plugins
call remote#host#RegisterPlugin('python3', '/home/jason/dotfiles/vim/.local/share/nvim/plugged/deoplete.nvim/rplugin/python3/deoplete', [
      \ {'sync': v:true, 'name': '_deoplete', 'type': 'function', 'opts': {}},
     \ ])


" ruby plugins
call remote#host#RegisterPlugin('ruby', '/home/jason/dotfiles/vim/.local/share/nvim/rplugin/ruby/test.rb', [
      \ {'sync': v:false, 'name': 'SetLine', 'type': 'command', 'opts': {'nargs': 1}},
      \ {'sync': v:true, 'name': 'Sum', 'type': 'function', 'opts': {'nargs': 2}},
      \ {'sync': v:false, 'name': 'BufEnter', 'type': 'autocmd', 'opts': {'pattern': '*.rb'}},
     \ ])


" python plugins


