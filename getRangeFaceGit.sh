#! /bin/bash 

# Vai para o diretório do script
cd ~/funcoes/pegaipsface/

# Pega redes do facebook
whois -h whois.radb.net '!gAS32934' | tr ' ' '\n' | grep ^[0-9] > ./pesquisa

# Compara se ouve mudanças nos ips do face
if diff -q ./pesquisa ./atual >/dev/null ; then
	echo "Não ocorreu alteração nos IPs do facebook" | mutt -s "Sem alteração IPs Face" EMAIL@gmail.com > /dev/null
else
	mutt -c EMAIL@gmail.com -i ./pesquisa -s "A T E N Ç Ã O - MUDANÇA IPs FACEBOOK" < /dev/null
	mv ./pesquisa ./atual
fi

