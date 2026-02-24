$COUNT = 1000
function Get-RandomString($length) {
    $chars = "abcdefghijklmnopqrstuvwxyz0123456789"
    -join ((1..$length) | ForEach-Object { $chars[(Get-Random -Minimum 0 -Maximum $chars.Length)] })
}
for ($i = 1; $i -le $COUNT; $i++) {
    $branchName = Get-RandomString 9
    git branch $branchName
}
