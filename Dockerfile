FROM microsoft/dotnet:2.1-runtime AS base
WORKDIR /ChatApp.Server
WORKDIR /app

FROM microsoft/dotnet:2.1-sdk AS build
WORKDIR /src

COPY ChatApp.Server/ChatApp.Server.csproj ChatApp.Server/
RUN dotnet restore ChatApp.Server/ChatApp.Server.csproj
COPY . .
WORKDIR /src/ChatApp.Server
RUN dotnet build ChatApp.Server.csproj -c Release -o /app

FROM build AS publish
RUN dotnet build ChatApp.Server.csproj -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet","ChatApp.Server.dll"]