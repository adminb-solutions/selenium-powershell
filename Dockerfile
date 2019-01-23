FROM mcr.microsoft.com/powershell

COPY . /usr/local/share/powershell/Modules/Selenium

RUN pwsh -c Install-Module Pester -Force

VOLUME [ "/tests" ]

WORKDIR /tests

ENTRYPOINT [ "pwsh", "-c" ]

CMD [ "Invoke-Gherkin" ]