# hosted_ft_server
A ready-to-host Docker-based NGINX/MariaDB/WordPress stack with a Let's Encrypt certificate generation and phpMyAdmin included.

The SSL certificate is generated automatically when starting the container. No automatic renewal is implemented for now (WIP).

Every non-HTTPS request is 301-forwarded to its HTTPS equivalent.

By default, the NGINX autoindex is activated.
When trying to serve a folder that doesn't contain an index.php file in it, the default behaviour is then to list the content of the folder. If the autoindex is disabled, an error 403 will be served instead.
You can disable it by passing `-e AUTOINDEX=0` as an argument of `docker run` when launching the container.

<h3>INSTALLATION</h3>

Make sure to replace :

- the email and domain name placeholders in the Dockerfile, 
- the 2 domain name placeholders in the srcs/wp NGINX config file,
- the MySQL root password placeholder in the srcs/init.sql file.

Then just :
- build the image with `docker build -t <chosen_image_name> <path_to_root_of_this_repo>`,
- and run it in detached mode with `docker run --name <chosen_container_name> -p 80:80 -p 443:443 -d <previously_chosen_image_name>`
