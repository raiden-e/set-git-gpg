$key = gpg --list-secret-keys --keyid-format LONG
$key = $key[2].substring($key[2].indexOf("/") + 1, 16)
git config --global user.signingkey $key
git config --global gpg.program "C:\Program Files (x86)\gnupg\bin\gpg.exe"