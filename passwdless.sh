cd ~
ssh-keygen
cat ~/.ssh/id_rsa.pub  > ~/.ssh/authorized_keys
echo 'StrictHostKeyChecking no' >>  ~/.ssh/config

#scp -r ~/.ssh/  slave01:~/
#scp -r ~/.ssh/  slave02:~/
