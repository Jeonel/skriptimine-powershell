write-host "I like to learn power shell skripting" -ForegroundColor Green
$numbers1 = @(1, 2, 3)
$numbers2 = @(4, 5, 6)

$el1 = $numbers1[0] + $numbers2[0]
$el2 = $numbers1[1] + $numbers2[1]
$el3 = $numbers1[2] + $numbers2[2]

# $numbers3 = @($el1, $el2, $el3) #
# Variant 2

$numbers3 = @()
$numbers3 = $numbers3 + $el1
$numbers3 = $numbers3 + $el2
$numbers3 = $numbers3 + $el3
