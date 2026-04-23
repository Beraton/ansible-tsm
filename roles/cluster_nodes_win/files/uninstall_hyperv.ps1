$ve = "IBM Spectrum Protect for Virtual Environments:"
$lic = "$ve Data Protection for Microsoft Hyper-V License"
$ws  = "IBM Spectrum Protect WebServer"
$jvm = "IBM Spectrum Protect JVM"

Get-WmiObject -class Win32_Product -Filter "Name=`"$lic`"" | Invoke-WmiMethod ` -Name "Uninstall" | Select-Object ReturnValue
Get-WmiObject -class Win32_Product -Filter "Name=`"$ws`""  | Invoke-WmiMethod ` -Name "Uninstall" | Select-Object ReturnValue
Get-WmiObject -class Win32_Product -Filter "Name=`"$jvm`"" | Invoke-WmiMethod ` -Name "Uninstall" | Select-Object ReturnValue

Exit 0
