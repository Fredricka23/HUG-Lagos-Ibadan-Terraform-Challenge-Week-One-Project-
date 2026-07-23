#!/bin/bash

apt update -y

apt install nginx -y

systemctl start nginx
systemctl enable nginx

cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
    <title>HUG Terraform Challenge</title>
</head>

<body>
    <h1>Fredricka David</h1>
    <h2>HUG Lagos/Ibadan Terraform Challenge</h2>

    <p>
    This web server was deployed using Terraform on AWS.
    </p>
</body>
</html>
EOF
