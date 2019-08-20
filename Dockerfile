FROM mcr.microsoft.com/powershell

COPY Selenium* /usr/local/share/powershell/Modules/Selenium/
COPY /assemblies /usr/local/share/powershell/Modules/Selenium/assemblies
COPY entrypoint.ps1 /entrypoint.ps1

RUN pwsh -c Install-Module Pester -Force

VOLUME [ "/tests" ]

WORKDIR /tests

ENTRYPOINT [ "pwsh", "-c", "/entrypoint.ps1" ]
