
#!/bin/bash
DOM=infchg.appspot.org
#DOM=your domain

if [ -z "${1}" ]
then
     exit 0
fi
echo generate for $1
cat > ${1}.${DOM}_cfg.txt <<EOF
[req]
default_bits = 2048
prompt = no
default_md = sha256
req_extensions = req_ext
distinguished_name = dn

[ dn ]
commonName = ${1}.$DOM

[ req_ext ]
subjectAltName = @alt_names

[ alt_names ]
DNS.1 = ${1}.$DOM
DNS.2 = ${1}
EOF
#DNS.3 = ${2}

openssl req -out ${1}.$DOM.csr -newkey rsa:2048 -nodes -keyout ${1}.$DOM.key -config ${1}.$DOM_cfg.txt

openssl req -noout -text -in ${1}.$DOM.csr


