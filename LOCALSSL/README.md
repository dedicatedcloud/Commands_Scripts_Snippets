```
openssl genrsa -des3 -out rootCA.key 2048
```
```
openssl req -x509 -new -nodes -key rootCA.key -sha256 -days 1024 -out rootCA.pem
```
Import to Browser

Create 

```
cat > server.csr.cnf <<- EOF
[req]
default_bits = 2048
prompt = no
default_md = sha256
distinguished_name = dn

[dn]
C=UK
ST=London
L=London
O=sweb
OU=Local
emailAddress=hello@example.com
CN = localhost
EOF

```

```
cat > v3.ext <<- EOF
authorityKeyIdentifier=keyid,issuer
basicConstraints=CA:FALSE
keyUsage = digitalSignature, nonRepudiation, keyEncipherment, dataEncipherment
subjectAltName = @alt_names

[alt_names]
DNS.1 = localhost
DNS.2 = xxxx
EOF

```
```
openssl req -new -sha256 -nodes -out server.csr -newkey rsa:2048 -keyout server.key -config <( cat server.csr.cnf )
```
```
openssl x509 -req -in server.csr -CA rootCA.pem -CAkey rootCA.key -CAcreateserial -out server.crt -days 500 -sha256 -extfile v3.ext
```

```
cat > server.js <<- EOF
var path = require('path');
var fs = require('fs');
var express = require('express');
var https = require('https');

var certOptions = {
  key: fs.readFileSync(path.resolve('server.key')),
  cert: fs.readFileSync(path.resolve('server.crt'))
};

https.createServer(certOptions, function (req, res) {
  res.writeHead(200, {'Content-Type': 'text/html'});
  res.write('Hello World!');
  res.end();
}).listen(443)
EOF

```
