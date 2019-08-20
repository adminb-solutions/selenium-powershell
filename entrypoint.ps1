$command = "Invoke-Gherkin -PassThru $args"
exit $(Invoke-Expression -Command $command).FailedCount