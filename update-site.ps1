# add audio player
invoke-expression -Command .\add-audioplayer.ps1

# update repo to update github page io
git add .
git commit -m 'new changes'
git push ssh_origin master