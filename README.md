---
Script utilizado para obter o range de redes do face.
---

Utilização: O range de redes do face pode ser utilizado
para bloqueio de acesso, via pfsense ou outro firewall.

O script utiliza 2 arquivos de apoio "atual" e "pesquisa". No atual ficam registrados as redes atuais do face, o arquivo pesquisa registra a pesquisa realizada pelo script.

---
Mutt: Utilizado para envio de email pelo ubuntu
---

sudo apt-get install mutt
sudo apt-get install urlview muttprint muttprint-manual mutt-patched w3m
sudo nano ~/.muttrc

---
Editar arquivo .muttrc:

set from = "EMAIL@gmail.com"
set realname = "E-mail servidor - muttcr"
set imap_user = "EMAIL@gmail.com"
set imap_pass = "SENHA"
set folder = "imaps://imap.gmail.com:993"
set spoolfile = "+INBOX"
set postponed ="+[Gmail]/Drafts"
set header_cache =~/.mutt/cache/headers
set message_cachedir =~/.mutt/cache/bodies
set certificate_file =~/.mutt/certificates
set smtp_url = "smtps://EMAIL@smtp.gmail.com:465/"
set smtp_pass = "SENHA"
set move = no set imap_keepalive = 900
---

---
Agendamento no CRON
---
O script pode ser agendado no cron (neste caso às 08:00h):
30 8 * * * sh ~/CAMINHODOSCRIPT/getRangeFace.sh >/dev/null 2>&1
