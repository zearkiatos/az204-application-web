function build() {
    dotnet build az204-application-web.sln
}

function run() {
    dotnet run --project az204-application-web/az204-application-web.csproj
}

function docker_run() {
    build_number=$RANDOM
    echo $build_number
    docker build -t az204-application-web:$build_number .
    docker run -d -p 8080:8080 --name az204-application-web az204-application-web:$build_number
}