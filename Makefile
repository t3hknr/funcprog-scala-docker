run: build
	docker run -v ~/src/scala_course:/home/scala/src:z --rm -it scala-latest

build:
	docker build -t scala-latest .

.PHONY: build run
