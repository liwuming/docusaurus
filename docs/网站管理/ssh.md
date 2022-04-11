


acme.sh  --issue -d   --nginx


acme.sh  --issue -d ibiancheng.net  -d '*.ibiancheng.net'  --dns dns_dp


DP_Key=Yqrb4GBpCI7fwxhAMHwKRHq89tNZU8Vc
DP_Id=AKIDdS3PUIq77qITO3RZQ0KOAftqXx6yZtxk



acme.sh --upgrade


acme.sh --cron --home "/root/.acme.sh" --force > /dev/null


acme.sh --renew  -d domain.com 

/www/server/panel/pyenv/bin/python /www/server/panel/class/acme_v2.py --renew=1