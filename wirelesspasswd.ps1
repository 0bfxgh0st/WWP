# powershell script to extract saved wireless passwords in a windows machine
#
# by 0bfxGH0ST
# use for testing purposes only

function obtain_wireless_saved_credentials(){

    $wireless_profiles=((netsh wlan show profiles) -match '\s{2,}:\s') -replace '.*:\s' , ''

    foreach ($name in $wireless_profiles){
	    netsh wlan show profile name=$name key=clear
    }
}

obtain_wireless_saved_credentials
