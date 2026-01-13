build:
	docker build --target out -t app .

run: build
	docker run --rm -it -p 3000:3000 app sh run.sh
