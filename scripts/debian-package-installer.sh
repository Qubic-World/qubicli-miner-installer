# download and install microsoft sourcese for dotnet installation
wget https://packages.microsoft.com/config/debian/11/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
# Update Sources and install .Net 6 package
apt update && apt install aspnetcore-runtime-6.0 -y
