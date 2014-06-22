let g:aizu#config_dir = expand("$HOME/.aizu-vim")

function! aizu#input_user_info()
  let userid = input('User ID: ')
  let password = inputsecret('Password: ')
  call system("mkdir -p " . g:aizu#config_dir)
  call system("chmod 0700 " . g:aizu#config_dir)
  call system("touch " . g:aizu#config_dir . "/config")
  call system("chmod 0600 " . g:aizu#config_dir . "/config")
  call writefile([userid, password], g:aizu#config_dir . "/config")
endfunction

function! aizu#init()
  call aizu#input_user_info()
endfunction

