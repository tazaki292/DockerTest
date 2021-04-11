FROM tazaki292/magiconion-chat-app-server
WORKDIR /ChatApp.Server

ENTRYPOINT ["/ChatApp.Server/Program.cs"]