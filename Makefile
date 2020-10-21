build:
	#chmod +x xdebug-entrypoint.sh
	docker build -t javanile/mssql .
	#docker-compose build

up: build
	echo docker-compose up -d --force-recreate

push: build
	git add .
	git commit -am "push to docker hub"
	git push
	docker push javanile/mssql
