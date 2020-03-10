#! /bin/sh
#./Mandatory.sh

#Valdemar & Andreas Juul Rasmussen s164933
#Technological univercity of Denmark
#wget URL = wget http://nmap.org/dist/nmap-6.40.tar.bz2
echo Do you want to install from:
echo 1 - source
echo 2 - dkpg/rpm
read installchoice
if [ $installchoice -eq 1 ]
then
  echo You have chosen source, type in URL.
  read URL
  echo $URL
  chmod 777 /usr/local/src
  cd /usr/local/src
  #wget -cO $URL > downloadedFile.tar.bz2
  #tar xvjf ./downloadedFile.tar.bz2
  #BASENAME
  #awk - deal with simple compressions
  wget $URL
  base = basename $URL
  tar xvjf $base
  echo $base
  #Only works with the specified URL
  cdFile = echo base awk -F ".tar"
  cd cdFile
  ./configure
  make
  make install
  echo Installation Complete

elif [ $installchoice -eq 2 ]
then
  echo 
  read packagechoice


else
  echo Unexpected installchoice
fi
