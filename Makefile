start: legacy

.PHONY: legacy
legacy:
	docker-compose up -d legacy

next:
	npm install next

clean:
	docker-compose down
	docker-compose rm -f
