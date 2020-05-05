# ResumeTex
A docker compose file serving [sharelatex](https://hub.docker.com/r/sharelatex/sharelatex/)

## How to run
Simply run
```
./docker-start.sh
```

## Start your own
Or you'd like to create your own user and start on your own project. First you need to clean up folders: `mongo/`,`redis/` and `sharelatex_data/`. Then you need to create a new user:
```
docker exec resumetex /bin/bash -c "cd /var/www/sharelatex; grunt user:create-admin --email=example@example.com"
```
Visit the link show up in the command line, it would looks like:
`http://localhost/user/password/set?passwordResetToken=1234567890-=qwertyuiop[]asdfghjkl;'zxcvbnm,./`. 

**Remember to add ':5000' after localhost**



