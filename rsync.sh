#!/bin/bash
rsync -avz -e "ssh"  /Users/cristianku/GitHub/wordpress_preloader/14bodhi_custom_loader/* admin@truenas.local:/mnt/POOLSSD/WORDPRESS/14BODHI/wp-content/plugins/14bodhi_custom_loader


