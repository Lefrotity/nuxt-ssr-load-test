build:
	docker build -t my-bun-app .

run: build
	docker run --rm -p 3000:3000 my-bun-app