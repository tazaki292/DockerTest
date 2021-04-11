FROM tazaki292/magiconion-chat-app-server

COPY ChatApp.Server/

ENTRYPOINT ["/ChatApp.Server/Program.cs"]