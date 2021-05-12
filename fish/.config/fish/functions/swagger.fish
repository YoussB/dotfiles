# Defined in - @ line 1
function swagger --description 'alias swagger=docker run --rm -it -e GOPATH=/Users/bishoy/go:/go -v /Users/bishoy:/Users/bishoy -w (pwd) quay.io/goswagger/swagger'
	docker run --rm -it -e GOPATH=/Users/bishoy/go:/go -v /Users/bishoy:/Users/bishoy -w (pwd) quay.io/goswagger/swagger $argv;
end
