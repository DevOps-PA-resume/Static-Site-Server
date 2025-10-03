# Static-Site-Server

https://roadmap.sh/projects/static-site-server

# Nginx

sudo apt update
sudo apt install nginx

# For the firewall
sudo ufw app list

sudo ufw allow 'Nginx HTTP'
sudo ufw allow OpenSSH

sudo ufw status

systemctl status nginx

After that you can access your server at http://your_server_ip

# Static website

run deploy.sh to sync your website with the server

if first time deploy

edit /etc/nginx/sites-available/mysite with

```
server {
    listen 80;
    server_name yourdomain.com;   # or use the server's IP if no domain

    root /var/www/mysite;
    index index.html;

    location / {
        try_files $uri $uri/ =404;
    }
}
```

sudo ln -s /etc/nginx/sites-available/mysite /etc/nginx/sites-enabled/
sudo nginx -t   # test config
sudo systemctl reload nginx

