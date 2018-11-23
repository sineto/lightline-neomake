# lightline-neomake
Inpired by [lightline-ale](https://github.com/maximbaz/lightline-ale) 
this plugin provides [neomake](https://github.com/neomake/neomake) indicators
for the [lightline](https://github.com/itchyny/lightline.vim) vim plugin.

## Requirements
* [neomake](https://github.com/neomake/neomake)
* [lightline](https://github.com/itchyny/lightline.vim)

## Installation
Use a plugin manager you want, like [vim-plug](https://github.com/junegunn/vim-plug):
```viml
Plug 'neomake/neomake'
Plug 'itchyny/lightline.vim'
Plug 'sinetoami/lightline-neomake'
```

## Configuration
### Set to the lightline status
1. Register the components:
```viml
let g:lightline.component_expand = {
  \ 'neomake_infos': 'lightline#neomake#infos',
  \ 'neomake_warnings': 'lightline#neomake#warnings',
  \ 'neomake_errors': 'lightline#neomke#errors',
  \ 'neomake_ok': 'lightline#neomake#ok',
\}
```
2. Add the components to the light line:
```viml
let g:lightline.active = { 
  \ 'right': [['neomake_warnings', 'neomake_errors', 
  \            'neomake_infos', 'neomake_ok']],
\}
```
3. If you want set the color to the components:
```viml
let g:lightline.component_type = {
  \ 'neomake_warnings': 'warning',
  \ 'neomake_errors': 'error',
  \ 'neomake_ok': 'left',
\}
```

### Global Variables
#### g:lightline#neomake#prefix_infos
Prefix when there are infos. Default is `I:`.

#### g:lightline#neomake#prefix_warnings
Prefix when there are warnings. Default is `W:`.

#### g:lightline#neomake#prefix_errors
Prefix when there are errors. Default is `E:`.

#### g:lightline#neomake#prefix_ok
Prefix qhen there are no nothing. Default is `OK`.

## Special thanks
* [Maxim Baz](https://github.com/maximbaz) for the greate 
[lightline-ale](https://github.com/maximbaz/lightline-ale) plugin that inpired
me.

## License
[MIT License](LICENSE)
