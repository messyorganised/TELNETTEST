$EmailFrom = "SENDER EMAIL"
$EmailFromPassword = "SENDER PASSWORD"
$EmailTo = "RECEIVER EMAIL"
$Subject = "TEST EMAIL SUBJECT"
$Body = "

This message indicate that your scan to email configuration is working as per standards. 
If the configuration does not work on your hardware, please check the hardware and site's configuration.
"

$SMTPServer = "SMTP SERVER CONFIG"
$Port = "SMTP SERVER PORT"


$EmailPasswordConverted = ConvertTo-SecureString $EmailFromPassword -AsPlainText -Force
$UserPass = New-Object System.Management.Automation.PSCredential ($Emailfrom, $EmailPasswordConverted)


Send-MailMessage -SmtpServer $SMTPServer -Port $port -From $EmailFrom -Credential $UserPass -To $EmailTo -Subject $Subject -Body $Body




