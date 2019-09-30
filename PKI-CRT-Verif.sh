   echo Verify CRTs Dates & Names   #rename /crt.txt/crt/ *crt.txt	ls /etc/pki/nginx/*crt  | xargs -n1 openssl x509 -text -in | grep GMT	ls /etc/pki/nginx/*crt  | xargs -n1 openssl x509 -text -in | grep Subject: | cut -d=  -f2 | xargs -n1 dig +noall +answer  echo Verify CRTs Dates & Names

   #rename /crt.txt/crt/ *crt.txt

	ls /etc/pki/nginx/*crt  | xargs -n1 openssl x509 -text -in | grep GMT

	ls /etc/pki/nginx/*crt  | xargs -n1 openssl x509 -text -in | grep Subject: | cut -d=  -f2 | xargs -n1 dig +noall +answer
