
$dentrixSQLPathath = "\\dentrix\DTXCommon\DentrixSQL"
$dentrixCustPath = $dentrixSQLPathath + "\Cust"
$dentrixCustBackupPath = $dentrixSQLPathath + "\CustBackups"
$date = Get-Date -format "yyyyMMdd-HHmmss"

$archiveName = $dentrixCustBackupPath + "\Cust_" + $date + ".zip" 

# Compress-Archive -LiteralPath $dentrix_cust_path  -CompressionLevel Optimal -DestinationPath $archive_name

Add-Type -Assembly "System.IO.Compression.FileSystem" ;
[System.IO.Compression.ZipFile]::CreateFromDirectory($dentrixCustPath, $archiveName) ;