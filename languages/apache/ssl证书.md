
acme.sh



--home：指定acme.sh安装的目录，默认是安装到 ~/.acme.sh。
--config-home：指定一个可写的文件夹，acme.sh将在其中写入所有文件（包括cert / keys，configs）。 默认情况下，它位于 --home。

--cert-home：指定一个目录，用于保存颁发的证书。 默认情况下，它保存在 --config-home。

--accountemail：指定一个用于注册Let's Encrypt帐户的电子邮箱，通过此电子邮件将收到续订等通知。

--accountkey：指定一个保存您帐户私钥的文件。 默认情况下，这个文件保存在 --config-home。

--accountconf：指定一个帐户配置文件。 默认情况下，这个文件保存在 --config-home。

--user-agent：发送给Let's Encrypt的user-agent请求信息。


acme.sh --home "/root/.acme.sh" > /dev/null


/www/server/panel/pyenv/bin/python /www/server/panel/class/acme_v2.py --renew=1


id:AKIDdS3PUIq77qITO3RZQ0KOAftqXx6yZtxk
key:Yqrb4GBpCI7fwxhAMHwKRHq89tNZU8Vc

DP_Key=Yqrb4GBpCI7fwxhAMHwKRHq89tNZU8Vc
DP_Id=AKIDdS3PUIq77qITO3RZQ0KOAftqXx6yZtxk



acme.sh --upgrade
acme.sh --issue --dns dns_dp -d example.com -d www.example.com

acme.sh --issue --dns dns_dp -d '*.ibiancheng.net' -d www.ibiancheng.net

renew


acme.sh   --issue   --dns dns_dp   -d www.ibiancheng.net -d blog.ibiancheng.net -d ibiancheng.net'


# 如果使用了 DNS 别名，还需要增加 --challenge-alias 别名域名 参数。
# 为了防止 DNS 不生效，脚本会暂停 2 分钟，并倒计时(Sleep 120 seconds for the txt records to take effect),等待即可。
# 如果成功会出现 Cert success. 字样。

$ export DP_Id="你的ID"
$ export DP_Key="你的Token"
$ acme.sh --issue --dns dns_dp -d example.com -d *.example.com

# 不建议直接用 ~/.acme.sh 下的证书，参考 https://github.com/Neilpang/acme.sh/wiki/说明#3-copy安装-证书。
# 需要使用 --installcert 复制到指定目录。

$ acme.sh --installcert -d  ibiancheng.net -d *.ibiancheng.net --key-file /www/server/panel/vhost/cert/chrome.ibiancheng.net/privkey.pem --fullchain-file /www/server/panel/vhost/cert/chrome.ibiancheng.net/fullchain.pem --reloadcmd  "systemctl nginx reload"
		
		
		/www/server/panel/vhost/cert/chrome.ibiancheng.net/fullchain.pem;
    ssl_certificate_key    /www/server/panel/vhost/cert/chrome.ibiancheng.net/privkey.pem;
socat doesn't exist.
Please update your account with an email address first.


acme.sh --register-account -m 1459543371@qq.com


curl  https://get.acme.sh | sh -s email=1459543371@qq.com

curl https://get.acme.sh | sh
curl  https://get.acme.sh | sh -s email=1459543371@qq.com





# certbot安装


