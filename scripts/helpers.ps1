
function Test-Command {

    param($Command)

    return $null -ne (Get-Command $Command -ErrorAction SilentlyContinue)

}
