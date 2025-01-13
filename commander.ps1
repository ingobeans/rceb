$command = @'
taskkill /F /IM "SafeExamBrowser.exe";
taskkill /F /IM "SafeExamBrowser.Client.exe"; 
start "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" https://c.tenor.com/x8v1oNUOmg4AAAAC/tenor.gif;
Start-Sleep -S 3;

Add-Type -AssemblyName PresentationFramework; [System.Windows.MessageBox]::Show("You've been hacked!","Uh oh!","Ok","Error");
'@


$base64Cmd = [System.Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes($command));
Write-Host $base64Cmd
powershell -EncodedCommand $base64Cmd