# Run cron jobs in a container embedded with a simple smtp server


Start your container
```
docker run -d \
-v /etc/localtime:/etc/localtime:ro \
-v $HOME/nullmailer/mailname:/etc/mailname \
-v $HOME/nullmailer/adminaddr:/etc/nullmailer/adminaddr \
-v $HOME/nullmailer/defaultdomain:/etc/nullmailer/defaultdomain \
-v $HOME/nullmailer/remotes:/etc/nullmailer/remotes \
-v $HOME/mycron:/etc/cron.d/mycron
tinsjourney/cron
```
