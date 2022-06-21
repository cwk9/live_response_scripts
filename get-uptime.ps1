#Small script to get the system uptime for the system.
Get-CimInstance -ClassName Win32_OperatingSystem | Select LastBootUpTime