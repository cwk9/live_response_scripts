#A wrapper for commandcam.exe since you cannot run programs directly from live response. 
#Download command cam exe here https://github.com/tedburke/CommandCam
#This script is intended for finding the location of unattended computers. Or tracking down stolen or miss aproperated equipment.

#Get the name and path of the file if provided. If not use date/time.
if (!$args[0]) { 
    $path = -join((Get-Date -UFormat "%Y-%m-%d_%H-%m-%S"),".bmp") 
    }
else {$path = $args[0]}

./CommandCam.exe /filename $path #Call the command cam binary 
