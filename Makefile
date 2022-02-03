start: legacy

.PHONY: legacy
legacy:
	docker-compose up -d legacy

.PHONY: next
next:
	npm --prefix next install
	npm --prefix next run dev

clean:
	docker-compose down
	docker-compose rm -f
