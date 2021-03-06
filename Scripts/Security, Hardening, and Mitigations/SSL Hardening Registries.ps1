#####TLS SSL HARDENING FOR HEARTBLEAD AND OTHERS#####

New-Item "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.3” -Force

New-Item "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.3\Server” -Force

New-Item "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.3\Client” -Force

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.3\Server" /v Enabled /t REG_DWORD /d "1" /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.3\Client" /v Enabled /t REG_DWORD /d "1" /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.3\Server" /v DisabledByDefault /t REG_DWORD /d "0" /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.3\Client" /v DisabledByDefault /t REG_DWORD /d "0" /f

New-Item "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2” -Force

New-Item "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Server” -Force

New-Item "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Client” -Force

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Server" /v Enabled /t REG_DWORD /d "1" /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Client" /v Enabled /t REG_DWORD /d "1" /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Server" /v DisabledByDefault /t REG_DWORD /d "0" /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Client" /v DisabledByDefault /t REG_DWORD /d "0" /f

New-Item "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1” –force

New-Item "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Server” –force

New-Item "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Client” –force

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Server" /v Enabled /t REG_DWORD /d "1" /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Client" /v Enabled /t REG_DWORD /d "1" /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Server" /v DisabledByDefault /t REG_DWORD /d "0" /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Client" /v DisabledByDefault /t REG_DWORD /d "0" /f

New-Item "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0” –force

New-Item "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Server” –force

New-Item "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Client” –force

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Server" /v Enabled /t REG_DWORD /d "1" /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Client" /v Enabled /t REG_DWORD /d "1" /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Server" /v DisabledByDefault /t REG_DWORD /d "0" /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Client" /v DisabledByDefault /t REG_DWORD /d "0" /f

New-Item "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0” –force

New-Item "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0\Server” –force

New-Item "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0\Client” –force

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0\Server" /v Enabled /t REG_DWORD /d "0" /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0\Client" /v Enabled /t REG_DWORD /d "0" /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0\Server" /v DisabledByDefault /t REG_DWORD /d "1" /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0\Client" /v DisabledByDefault /t REG_DWORD /d "1" /f


##### DISABLE WEAK AND ANONYMOUS CYPHERS#####
Disable-TlsCipherSuite -Name “TLS_DHE_RSA_WITH_AES_256_CBC_SHA“
Disable-TlsCipherSuite -Name “TLS_DHE_RSA_WITH_AES_128_CBC_SHA“
Disable-TlsCipherSuite -Name “TLS_RSA_WITH_AES_256_GCM_SHA384“
Disable-TlsCipherSuite -Name “TLS_RSA_WITH_AES_128_GCM_SHA256“
Disable-TlsCipherSuite -Name “TLS_RSA_WITH_AES_256_CBC_SHA256“
Disable-TlsCipherSuite -Name “TLS_RSA_WITH_AES_128_CBC_SHA256“
Disable-TlsCipherSuite -Name “TLS_RSA_WITH_AES_256_CBC_SHA“
Disable-TlsCipherSuite -Name “TLS_RSA_WITH_AES_128_CBC_SHA“
Disable-TlsCipherSuite -Name “TLS_RSA_WITH_3DES_EDE_CBC_SHA“
Disable-TlsCipherSuite -Name “TLS_DHE_DSS_WITH_AES_256_CBC_SHA256“
Disable-TlsCipherSuite -Name “TLS_DHE_DSS_WITH_AES_128_CBC_SHA256“
Disable-TlsCipherSuite -Name “TLS_DHE_DSS_WITH_AES_256_CBC_SHA“
Disable-TlsCipherSuite -Name “TLS_DHE_DSS_WITH_AES_128_CBC_SHA“
Disable-TlsCipherSuite -Name “TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA“
Disable-TlsCipherSuite -Name “TLS_RSA_WITH_RC4_128_SHA“
Disable-TlsCipherSuite -Name “TLS_RSA_WITH_RC4_128_MD5“
Disable-TlsCipherSuite -Name “TLS_RSA_WITH_NULL_SHA256“
Disable-TlsCipherSuite -Name “TLS_RSA_WITH_NULL_SHA“
Disable-TlsCipherSuite -Name “TLS_PSK_WITH_AES_256_GCM_SHA384“
Disable-TlsCipherSuite -Name “TLS_PSK_WITH_AES_128_GCM_SHA256“
Disable-TlsCipherSuite -Name “TLS_PSK_WITH_AES_256_CBC_SHA384“
Disable-TlsCipherSuite -Name “TLS_PSK_WITH_AES_128_CBC_SHA256“
Disable-TlsCipherSuite -Name “TLS_PSK_WITH_NULL_SHA384“
Disable-TlsCipherSuite -Name “TLS_PSK_WITH_NULL_SHA256“

