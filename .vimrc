"Plugin
"�v���O�C����Ǎ��ޏꍇ�͂����ɋL�q
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" �t�@�C����tree�\�����Ă����
NeoBundle 'scrooloose/nerdtree'
" Ctrl+e�Ńc���[�\������
nnoremap <silent><C-e> :NERDTree<CR>
" Git��֗��Ɏg��
NeoBundle 'tpope/vim-fugitive'
" �C���f���g�ɐF��t���Č��₷������
NeoBundle 'nathanaelkane/vim-indent-guides'
" Rails�����̃R�}���h��񋟂���
NeoBundle 'tpope/vim-rails'
" Ruby������end�������}�����Ă����
NeoBundle 'tpope/vim-endwise'

"Backup
set noundofile		"undo�t�@�C���𐶐����Ȃ�
set nobackup			"backup�t�@�C���𐶐����Ȃ�
set noswapfile		"swap�t�@�C���𐶐����Ȃ�

"Visual
set number      	"�s�ԍ���\��
set cursorline  	"���ݍs�������\��
set cursorcolumn  "���ݗ�������\��
set paste         "�y�[�X�g���̃I�[�g�C���f���g�𖳌��ɂ���
syntax on					"�\�����ɐF����������

""""""""""""""""""""""""""""""
" �S�p�X�y�[�X�̕\��
" http://inari.hatenablog.com/entry/2014/05/05/231307
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
endfunction

if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme * call ZenkakuSpace()
        autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace', '�@')
    augroup END
    call ZenkakuSpace()
endif
""""""""""""""""""""""""""""""

"Search
set incsearch   "�C���N�������^���T�[�`���s��
set hlsearch    "�������ʂ��n�C���C�g����
set ignorecase  "�������ɑ啶������������ʂ��Ȃ�
set smartcase   "�������[�h�ɑ啶�����܂�ł�����召����ʂ���
set wrapscan    "�t�@�C���̐擪�փ��[�v����
set whichwrap=b,s,h,l,<,>,[,] "�J�[�\�����s���A�s���Ŏ~�܂�Ȃ��悤�ɂ���
set clipboard=unnamed "�N���b�v�{�[�h�𗘗p����

"Input
set expandtab			"�^�u���͂𕡐��̋󔒓��͂ɒu��������
set tabstop=2			"��ʏ�Ń^�u��������߂镝
set shiftwidth=2	"�����C���f���g�ł���镝
set autoindent		"���s���ɑO�̍s�̃C���f���g���p������
