###SCP Details
Copy files To server:
scp -r filename  user@ip:path/  
scp -r trinity.txt trinath@3.333.33.333.::/bv/trinath/github/

Copy files From server:
scp -r user@ip:path/   . (current path)  
scp -r trinath@3.333.33.333.::/bv/trinath/github/test.jpg .

###SSH Details
ssh username@ipaddress
ssh trinath@techhawa.com

#connect using pem file 
sudo sshfs {username}@{ipaddress}:{remote folder path} {local folder path} -o IdentityFile={full path to the private key file}

