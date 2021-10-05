function Main
{
    <#
    COMMENT
    #>
    Get-Service -Name *ssh* | Set-Service -StartupType Automatic;
    Invoke-RestMethod -Uri 'http://192.168.0.3:8080'
}