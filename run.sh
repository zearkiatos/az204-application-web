function build() {
    dotnet build az204-application-web.sln
}

function run() {
    dotnet run --project az204-application-web/az204-application-web.csproj
}