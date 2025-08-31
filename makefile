build:
	dotnet build az204-application-web.sln

run:
	dotnet run --project az204-application-web/az204-application-web.csproj

docker-run:
	build_number=$$RANDOM; \
	echo $$build_number; \
	docker build -t az204-application-web:$$build_number .; \
	docker run -d -p 8080:8080 --name az204-application-web az204-application-web:$$build_number

docker-publish:
	build_number=$$RANDOM; \
	docker build -t az204-application-web:$$build_number .; \
	docker tag az204-application-web:$$build_number az204eastacontaineregistry.azurecr.io/az204-application-web:latest
	docker push az204eastacontaineregistry.azurecr.io/az204-application-web:latest