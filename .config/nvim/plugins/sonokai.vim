Plug 'sainnhe/sonokai'
Plug 'ghifarit53/tokyonight-vim'

augroup SonokaiOverrides
    autocmd!
    " autocmd User PlugLoaded ++nested colorscheme sonokai
    autocmd User PlugLoaded ++nested colorscheme tokyonight 
augroup end

let g:tokyonight_style = 'storm' " available: night, storm

