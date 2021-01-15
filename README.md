# Set Git GPG

In case `git` forgets what gpg key it should be using.

Run like so:

```ps
.\set_git_gpg.ps1
```

Does the following:

```ps
$key = gpg --list-secret-keys --keyid-format LONG
$key = $key[2].substring($key[2].indexOf("/") + 1, 16)
git config --global user.signingkey $key
```
