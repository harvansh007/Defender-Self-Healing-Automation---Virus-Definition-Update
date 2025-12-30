# This script will check if virus definition updated under 5 days.
# If Device is updated within 5 days then it will mark as Complaint
# Change the 5 number according to your standard.
# This script should used as a detection.

If ((Get-MPComputerStatus).AntispywareSignatureAge -le 5)
{
Write-Host "Compliant"
}
else 
{
Write-Host "Not Compliant"
}