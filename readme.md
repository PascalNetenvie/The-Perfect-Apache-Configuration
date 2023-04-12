<h3>The Perfect Apache Configuration

Optimized for Apache 2.4.4 on Debian 9/10/11 + Nginx as reverse proxy + Plesk</h3>
This is a fork from https://github.com/gregrickaby/The-Perfect-Apache-Configuration.
Go to this page for more details on original file.

<h3>Installation</h3>
Copy and paste the contents of http.conf into /apache2/httpd.conf

On debian you should better create this file /etc/apache2/conf-enabled/zz999_yourname.conf and paste contents in it.

<h3>CHANGE LOG</h3>

<strong>v2.3 - 2023.04</strong>
<ul>
  <li>Better comments about lines to be customized.</li>
  <li>Warning about config location and plesk usages.</li>
</ul>

<strong>v2.2 - 2021.06</strong>
- TLS 1.2+
- More security headers
- Performance tuning for big server
- Settings to avoid timeout with Nginx

<h3>Disclaimer</h3>
<ul>
  <li>If you break Apache, then you may not have all the modules turn on.</li>
  <li>This configuration works best for my servers under Debian 9/10/11 + Apache 2.4.4 + Nginx as reverse proxy + Plesk. Your needs may differ.</li>
</ul>
