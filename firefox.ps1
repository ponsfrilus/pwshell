# https://developer.mozilla.org/fr/Firefox/deploiement_Entreprise
# https://www.itsupportguides.com/configmgr-sccm/install-and-configure-firefox-silently/

# Default path C:\Program Files\Mozilla Firefox
# Go to downloads
cd C:\Users\admin\Downloads\

# Create query string
$Parameters = @{
	product = 'firefox-47.0.1-SSL'
	os = 'win64'
	lang = 'en-US'
}

# Donwload firefox installer
Invoke-WebRequest -URI 'https://download.mozilla.org/' -Body $Parameters -OutFile firefox_installer.exe

# Install firefox
& ' C:\Users\admin\Downloads\firefox_installer.exe' '-ms'
