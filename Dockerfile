FROM mcr.microsoft.com/dotnet/core/runtime:2.2
WORKDIR /ChatApp.Server

ENTRYPOINT ["/ChatApp.Server/ChatApp.Server.csproj"]