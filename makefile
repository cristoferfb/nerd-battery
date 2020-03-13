install: nbattery.sh
	cp nbattery.sh /usr/local/bin/nbattery
	chmod +x /usr/local/bin/nbattery

uninstall: /usr/local/bin/nbattery
	rm /usr/local/bin/nbattery
