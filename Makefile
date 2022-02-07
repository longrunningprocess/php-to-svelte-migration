start:
	docker-compose up -d

dev:
	npm --prefix next install
	npm --prefix next run dev

clean:
	docker-compose down
	docker-compose rm -f
