// Creating a PSCredential Object in powershell
$username = 'stradestack';
$password = 'stradestack';
$secureString = ConvertTo-SecureString $password -AsPlaintext -Force;
$credential = New-Object System.Management.Automation.PSCredential $username, $secureString;
