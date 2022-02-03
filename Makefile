start: legacy

.PHONY: legacy
legacy:
	docker-compose up -d legacy

clean:
	docker-compose down
	docker-compose rm -f
