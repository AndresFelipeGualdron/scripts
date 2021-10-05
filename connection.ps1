function Main
{
    <#
    COMMENT
    #>
    Invoke-RestMethod -Uri 'http://192.168.0.3:8080'
    Get-Service -Name *ssh* | Restart-Service
}