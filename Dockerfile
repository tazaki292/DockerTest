FROM mcr.microsoft.com/dotnet/core/runtime:2.2
WORKDIR /ChatApp.Server

ENTRYPOINT ["ChatApp.Server/bin/Release/netcoreapp3.1/ChatApp.Server.exe"]