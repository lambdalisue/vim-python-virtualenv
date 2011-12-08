"
" vim-python-virtualenv
"
" Activate python virtualenv in vim
"
" Author: Alisue (lambdalisue@hashnote.net)
" Date: 11/12/09
"
if !has('python')
    echo "Error: Required vim compiled with +python"
    finish
endif

let g:pythonworkon = "System"
py << EOF
import sys, os.path
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
    # Save virtual environment name to VIM variable
    vim.command("let g:pythonworkon = '%s'" % os.path.basename(project_base_dir))
EOF
