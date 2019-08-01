# ----------------------------------------------------------------------
# Apache configuration file
# This file is best used in /apache2/httpd.conf, but works (slower) in .htaccess
#
# I've spent quite a bit of time compiling what I find to be optimial to me
# and my server. This file is based on:
# - HTML5BoilerPlate: https://github.com/h5bp/html5-boilerplate/
# - W3 Edge: http://www.w3-edge.com/
# - Yahoo! Best Practices: http://developer.yahoo.com/performance/rules.html
# - Caching Tutorial: http://www.mnot.net/cache_docs/
# - Personal experience
#
# v1.2 / 2013.07.01 / Greg Rickaby
# v2.1 / 2019.08.01 / Netenvie - Pascal Devif
# ----------------------------------------------------------------------
# Specify a Default Charset
AddDefaultCharset utf-8
# ----------------------------------------------------------------------
# Cache Control via HTTP Headers + Expires
# Generation of Expires and Cache-Control HTTP headers according to user-specified criteria
# http://httpd.apache.org/docs/2.0/mod/mod_headers.html
# ----------------------------------------------------------------------
# Expires Defaults
<IfModule mod_expires.c>
ExpiresActive On
# Set default expires to 2 days -> 1 week
# ExpiresDefault A172800
ExpiresDefault A604800
ExpiresByType text/css A31536000
ExpiresByType application/x-javascript A31536000
ExpiresByType text/x-component A31536000
ExpiresByType text/html A3600
ExpiresByType text/richtext A3600
ExpiresByType image/svg+xml A3600
ExpiresByType text/plain A3600
ExpiresByType text/xsd A3600
ExpiresByType text/xsl A3600
ExpiresByType text/xml A3600
ExpiresByType video/asf A31536000
ExpiresByType video/avi A31536000
ExpiresByType image/bmp A31536000
ExpiresByType application/java A31536000
ExpiresByType video/divx A31536000
ExpiresByType application/msword A31536000
ExpiresByType application/vnd.ms-fontobject A31536000
ExpiresByType application/x-msdownload A31536000
ExpiresByType image/gif A31536000
ExpiresByType application/x-gzip A31536000
ExpiresByType image/x-icon A31536000
ExpiresByType image/jpeg A31536000
ExpiresByType application/vnd.ms-access A31536000
ExpiresByType audio/midi A31536000
ExpiresByType video/quicktime A31536000
ExpiresByType audio/mpeg A31536000
ExpiresByType video/mp4 A31536000
ExpiresByType video/mpeg A31536000
ExpiresByType application/vnd.ms-project A31536000
ExpiresByType application/x-font-otf A31536000
ExpiresByType application/vnd.oasis.opendocument.database A31536000
ExpiresByType application/vnd.oasis.opendocument.chart A31536000
ExpiresByType application/vnd.oasis.opendocument.formula A31536000
ExpiresByType application/vnd.oasis.opendocument.graphics A31536000
ExpiresByType application/vnd.oasis.opendocument.presentation A31536000
ExpiresByType application/vnd.oasis.opendocument.spreadsheet A31536000
ExpiresByType application/vnd.oasis.opendocument.text A31536000
ExpiresByType audio/ogg A31536000
ExpiresByType application/pdf A31536000
ExpiresByType image/png A31536000
ExpiresByType application/vnd.ms-powerpoint A31536000
ExpiresByType audio/x-realaudio A31536000
ExpiresByType image/svg+xml A31536000
ExpiresByType application/x-shockwave-flash A31536000
ExpiresByType application/x-tar A31536000
ExpiresByType image/tiff A31536000
ExpiresByType application/x-font-ttf A31536000
ExpiresByType audio/wav A31536000
ExpiresByType audio/wma A31536000
ExpiresByType application/vnd.ms-write A31536000
ExpiresByType application/vnd.ms-excel A31536000
ExpiresByType application/zip A31536000
</IfModule>
# No caching for dynamic files (sans PHP pour JCH)
<filesMatch "\.(cgi|pl|php|htm)$">
ExpiresDefault A0
Header set Cache-Control "max-age=0, no-store, no-cache, must-revalidate"
Header set Pragma "no-cache"
</filesMatch>
# 1 MIN
<filesMatch "\.(html)$">
ExpiresDefault A1
Header set Cache-Control "max-age=0, no-store, no-cache, must-revalidate"
Header set Pragma "no-cache"
</filesMatch>
# 2 DAYS
<filesMatch "\.(xml|txt)$">
ExpiresDefault A172800
Header set Cache-Control "max-age=172800, public, must-revalidate"
Header set Pragma "public"
</filesMatch>
# 1 WEEK
<filesMatch "\.(js|css)$">
ExpiresDefault A604800
Header set Cache-Control "max-age=604800, public, must-revalidate"
Header set Pragma "public"
</filesMatch>
# 1 MONTH
<filesMatch "\.(jpg|jpeg|png|gif|swf|ico|pdf|flv)$">
ExpiresDefault A2419200
Header set Cache-Control "max-age=2419200, public, must-revalidate"
Header set Pragma "public"
</filesMatch>
# ----------------------------------------------------------------------
# Mime Types
# Mime Associates the requested filename's extensions with the file's behavior and content
# http://httpd.apache.org/docs/2.0/mod/mod_mime.html
# ----------------------------------------------------------------------
<IfModule mod_mime.c>
AddType text/css .css
AddType application/x-javascript .js
AddType text/x-component .htc
AddType text/html .html .htm
AddType text/richtext .rtf .rtx
AddType image/svg+xml .svg .svgz
AddType text/plain .txt
AddType text/xsd .xsd
AddType text/xsl .xsl
AddType text/xml .xml
AddType video/asf .asf .asx .wax .wmv .wmx
AddType video/avi .avi
AddType image/bmp .bmp
AddType application/java .class
AddType video/divx .divx
AddType application/msword .doc .docx
AddType application/vnd.ms-fontobject .eot
AddType application/x-msdownload .exe
AddType image/gif .gif
AddType application/x-gzip .gz .gzip
AddType image/x-icon .ico
AddType image/jpeg .jpg .jpeg .jpe
AddType application/vnd.ms-access .mdb
AddType audio/midi .mid .midi
AddType video/quicktime .mov .qt
AddType audio/mpeg .mp3 .m4a
AddType video/mp4 .mp4 .m4v
AddType video/mpeg .mpeg .mpg .mpe
AddType application/vnd.ms-project .mpp
AddType application/x-font-otf .otf
AddType application/vnd.oasis.opendocument.database .odb
AddType application/vnd.oasis.opendocument.chart .odc
AddType application/vnd.oasis.opendocument.formula .odf
AddType application/vnd.oasis.opendocument.graphics .odg
AddType application/vnd.oasis.opendocument.presentation .odp
AddType application/vnd.oasis.opendocument.spreadsheet .ods
AddType application/vnd.oasis.opendocument.text .odt
AddType audio/ogg .ogg
AddType application/pdf .pdf
AddType image/png .png
AddType application/vnd.ms-powerpoint .pot .pps .ppt .pptx
AddType audio/x-realaudio .ra .ram
AddType application/x-shockwave-flash .swf
AddType application/x-tar .tar
AddType image/tiff .tif .tiff
AddType application/x-font-ttf .ttf .ttc
AddType audio/wav .wav
AddType audio/wma .wma
AddType application/vnd.ms-write .wri
AddType application/vnd.ms-excel .xla .xls .xlsx .xlt .xlw
AddType application/zip .zip
</IfModule>
# ----------------------------------------------------------------------
# Gzip compression
# Compress content before it is delivered to the client
# http://httpd.apache.org/docs/2.0/mod/mod_deflate.html
# ----------------------------------------------------------------------
<IfModule mod_deflate.c>
	# Force deflate for mangled headers developer.yahoo.com/blogs/ydn/posts/2010/12/pushing-beyond-gzipping/
	<IfModule mod_setenvif.c>
		<IfModule mod_headers.c>
			SetEnvIfNoCase ^(Accept-EncodXng|X-cept-Encoding|X{15}|~{15}|-{15})$ ^((gzip|deflate)\s*,?\s*)+|[X~-]{4,13}$ HAVE_Accept-Encoding
			RequestHeader append Accept-Encoding "gzip,deflate" env=HAVE_Accept-Encoding
			# Servir des fichiers CSS compressés avec gzip, s'ils existent, et
			# si le client accepte gzip.
			RewriteCond "%{HTTP:Accept-encoding}" "gzip"
			RewriteCond "%{REQUEST_FILENAME}\.gz" "-s"
			RewriteRule "^(.*)\.css"              "$1\.css\.gz" [QSA]
			
			# Servir des fichiers JS compressés avec gzip, s'ils existent, et
			# si le client accepte gzip.
			RewriteCond "%{HTTP:Accept-encoding}" "gzip"
			RewriteCond "%{REQUEST_FILENAME}\.gz" "-s"
			RewriteRule "^(.*)\.js"               "$1\.js\.gz" [QSA]
			
			# Servir des types de contenus corrects, et empêcher mod_deflate
			# d'effectuer un double gzip.
			RewriteRule "\.css\.gz$" "-" [T=text/css,E=no-gzip:1]
			RewriteRule "\.js\.gz$"  "-" [T=text/javascript,E=no-gzip:1]
			
			<FilesMatch "(\.js\.gz|\.css\.gz)$">
			# Servir le type de codage correct.
			Header append Content-Encoding gzip
			# Force les mandataires à mettre en cache séparément les fichiers
			# css/js gzippés & non gzippés.
			Header append Vary Accept-Encoding
			</FilesMatch>
		</IfModule>
	</IfModule>
	
	<IfModule filter_module>
		# HTML, TXT, CSS, JavaScript, JSON, XML, HTC:
		FilterDeclare   COMPRESS
		FilterProvider  COMPRESS  DEFLATE "%{Content_Type} = 'text/html'"
		FilterProvider  COMPRESS  DEFLATE "%{Content_Type} = 'text/css'"
		FilterProvider  COMPRESS  DEFLATE "%{Content_Type} = 'text/plain'"
		FilterProvider  COMPRESS  DEFLATE "%{Content_Type} = 'text/xml'"
		FilterProvider  COMPRESS  DEFLATE "%{Content_Type} = 'text/x-component'"
    FilterProvider  COMPRESS  DEFLATE "%{Content_Type} = 'text/javascript'"
    FilterProvider  COMPRESS  DEFLATE "%{Content_Type} = 'application/javascript'"
    FilterProvider  COMPRESS  DEFLATE "%{Content_Type} = 'application/x-javascript'"
		FilterProvider  COMPRESS  DEFLATE "%{Content_Type} = 'application/json'"
		FilterProvider  COMPRESS  DEFLATE "%{Content_Type} = 'application/xml'"
		FilterProvider  COMPRESS  DEFLATE "%{Content_Type} = 'application/xhtml+xml'"
		FilterProvider  COMPRESS  DEFLATE "%{Content_Type} = 'application/rss+xml'"
		FilterProvider  COMPRESS  DEFLATE "%{Content_Type} = 'application/atom+xml'"
		FilterProvider  COMPRESS  DEFLATE "%{Content_Type} = 'application/vnd.ms-fontobject'"
		FilterProvider  COMPRESS  DEFLATE "%{Content_Type} = 'image/svg+xml'"
		FilterProvider  COMPRESS  DEFLATE "%{Content_Type} = 'image/x-icon'"
		FilterProvider  COMPRESS  DEFLATE "%{Content_Type} = 'application/x-font-ttf'"
		FilterProvider  COMPRESS  DEFLATE "%{Content_Type} = 'font/opentype'"
		FilterChain     COMPRESS
		FilterProtocol  COMPRESS  DEFLATE change=yes;byteranges=no
	</IfModule>
	<IfModule !mod_filter.c>
		# Legacy versions of Apache
		AddOutputFilterByType DEFLATE text/html text/plain text/css application/json
		AddOutputFilterByType DEFLATE text/javascript application/javascript application/x-javascript
		AddOutputFilterByType DEFLATE text/xml application/xml text/x-component
		AddOutputFilterByType DEFLATE application/xhtml+xml application/rss+xml application/atom+xml
		AddOutputFilterByType DEFLATE image/x-icon image/svg+xml application/vnd.ms-fontobject application/x-font-ttf font/opentype
	</IfModule>
</IfModule>
# ----------------------------------------------------------------------
# Disable server signature (Security)
# Configures the Server HTTP response header
# http://httpd.apache.org/docs/2.2/mod/core.html#serversignature
# ----------------------------------------------------------------------
ServerSignature Off
TraceEnable off
ServerTokens Prod
SSLProtocol -ALL +TLSv1.2
SSLCipherSuite      ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-CHACHA20-POLY1305:ECDHE-RSA-CHACHA20-POLY1305:ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-SHA384:ECDHE-RSA-AES256-SHA384:ECDHE-ECDSA-AES128-SHA256:ECDHE-RSA-AES128-SHA256
SSLHonorCipherOrder on
SSLCompression      off
SSLSessionTickets   off
# ----------------------------------------------------------------------
# Disable directory browsing (Security)
# Generates directory indexes, automatically, similar to the Unix ls command or the Win32 dir shell command
# http://httpd.apache.org/docs/2.0/mod/mod_autoindex.html
# ----------------------------------------------------------------------
<IfModule mod_autoindex.c>
Options -Indexes
</IfModule>
# ----------------------------------------------------------------------
# Block access to backup and source files (Security)
# This files may be left by some text/html editors and pose a great security danger
# ----------------------------------------------------------------------
<FilesMatch "(\.(bak|config|sql|fla|psd|ini|log|sh|inc|swp|dist)|~)$">
Order allow,deny
Deny from all
Satisfy All
</FilesMatch>
# ----------------------------------------------------------------------
# Increase cookie security (Security)
# This files may be left by some text/html editors and pose a great security danger
# ----------------------------------------------------------------------
<IfModule php5_module>
php_value session.cookie_httponly true
</IfModule>
# ----------------------------------------------------------------------
# Webfont access
# Allow access from all domains for webfonts.
# ----------------------------------------------------------------------
<IfModule mod_headers.c>
<FilesMatch "\.(ttf|ttc|otf|eot|woff|woff2|font.css)$">
Header set Access-Control-Allow-Origin "*"
</FilesMatch>
</IfModule>
# ----------------------------------------------------------------------
# Force latest IE rendering engine
# ----------------------------------------------------------------------
<IfModule mod_headers.c>
Header always set Author "YOURSELF.COM"
Header always unset "X-Powered-By"
Header always unset "Composed-By"
Header always unset "X-Content-Encoded-By"
Header always unset "Apache"
# mod_headers can't match by content-type, but we don't want to this header on everything
<FilesMatch "\.(js|css|gif|png|jpe?g|pdf|xml|oga|ogg|m4a|ogv|mp4|m4v|webm|svg|svgz|eot|ttf|otf|woff|ico|webp|appcache|manifest|htc|crx|oex|xpi|safariextz|vcf)$" >
Header unset X-UA-Compatible
</FilesMatch>
</IfModule>
# ----------------------------------------------------------------------
# Instructs the proxies to cache two versions of the resource: one compressed, and one uncompressed.
# https://developers.google.com/speed/docs/best-practices/caching#LeverageProxyCaching
# ----------------------------------------------------------------------
<IfModule mod_headers.c>
<FilesMatch "\.(js|css|xml|gz)$">
Header append Vary: Accept-Encoding
</FilesMatch>
</IfModule>
# ----------------------------------------------------------------------
# CORS-enabled images (@crossorigin)
# Send CORS headers if browsers request them; enabled by default for images.
# http://developer.mozilla.org/en/CORS_Enabled_Image
# http://blog.chromium.org/2011/07/using-cross-domain-images-in-webgl-and.html
# http://hacks.mozilla.org/2011/11/using-cors-to-load-webgl-textures-from-cross-domain-images/
# http://wiki.mozilla.org/Security/Reviews/crossoriginAttribute
# ----------------------------------------------------------------------
<IfModule mod_setenvif.c>
<IfModule mod_headers.c>
<FilesMatch "\.(gif|png|jpe?g|svg|svgz|ico|webp)$">
SetEnvIf Origin ":" IS_CORS
Header set Access-Control-Allow-Origin "*" env=IS_CORS
</FilesMatch>
</IfModule>
</IfModule>
# ----------------------------------------------------------------------
# More security
# https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options
# https://content-security-policy.com/
# ----------------------------------------------------------------------
<IfModule mod_headers.c>
Header set X-Frame-Options SAMEORIGIN
Header always set X-Xss-Protection "1; mode=block"
Header always set Strict-Transport-Security "max-age=31536000; includeSubDomains"
Header always set X-Content-Type-Options "nosniff"
Header always set Referrer-Policy: no-referrer-when-downgrade
#Header set Content-Security-Policy "default-src 'self' www.google.com www.gstatic.com www.googleapis.com www.youtube-nocookie.com www.youtube.com www.dailymotion.com dai.ly player.vimeo.com vimeo.com youtu.be; script-src 'self' 'unsafe-eval' 'unsafe-inline' s.ytimg.com www.youtube.com maps.googleapis.com www.google.com www.gstatic.com www.google-analytics.com ajax.googleapis.com; img-src 'self' data: i.ytimg.com www.google.com csi.gstatic.com maps.googleapis.com maps.gstatic.com www.youtube.com www.dailymotion.com dai.ly player.vimeo.com vimeo.com youtu.be; style-src 'self' 'unsafe-inline' fonts.googleapis.com fonts.gstatic.com netdna.bootstrapcdn.com ; font-src 'self' fonts.gstatic.com netdna.bootstrapcdn.com; media-src 'self' www.youtube-nocookie.com www.dailymotion.com dai.ly player.vimeo.com vimeo.com youtu.be www.youtube.com;"
</IfModule>
# ----------------------------------------------------------------------
# To avoid long script Read data time out with php as fastcgi
# Prestashop server : Raise to 600 if needed
# ----------------------------------------------------------------------
<IfModule mod_fcgid.c>
FcgidBusyTimeout 120
FcgidIdleTimeout 120
FcgidProcessLifeTime 120
FcgidConnectTimeout 120
FcgidIOTimeout 120
</IfModule>
# ----------------------------------------------------------------------
# To avoid long script data time out with php as fpm (can be raised to 300/600)
TimeOut 120
ProxyTimeout 120
