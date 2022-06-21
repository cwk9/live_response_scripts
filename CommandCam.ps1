#A wrapper for commandcam.exe since you cannot run programs directly from live response. 
#Download command cam exe here https://github.com/tedburke/CommandCam
#This script is intended for finding the location of unattended computers. Or tracking down stolen or miss aproperated equipment.

#Example use. First upload the commandcam.exe and this script to the library.
#put CommandCam.exe
#put CommandCam.Ps1
#cd "C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection\Downloads"
#getfile 2022-06-21_13-06-34.bmp

#Get the name and path of the file if provided. If not use date/time.
if (!$args[0]) { 
    $path = -join((Get-Date -UFormat "%Y-%m-%d_%H-%m-%S"),".bmp") 
    }
else {$path = $args[0]}

./CommandCam.exe /filename $path #Call the command cam binary 
