function Main
{
    <#
    COMMENT
    #>

    ## Install the OpenSSH Client
    #Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0

    ## Install the OpenSSH Server
    #Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0

    Get-Service -Name *ssh* | Set-Service -StartupType Automatic;
    curl 'http://192.168.0.3:8080'
}