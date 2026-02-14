install:
	bin/composer install

start:
	php -S localhost:8080

test:
	# cd tst && ../vendor/bin/phpunit
	./vendor/bin/phpunit
	
lint-php:
	find . -type f -name '*.php' -exec php -l {} \;

lint-cs:
	cd vendor && ../vendor/bin/phpcs --extensions=php vendor

lint-md:
	cd vendor && ../vendor/bin/phpmd
