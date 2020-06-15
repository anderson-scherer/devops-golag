FROM golang:alpine AS builder

# Definição do diretório principal
WORKDIR $GOPATH/src/golang/main/

# Copiando executável
COPY . .

# Defiições de Packege Get
RUN go get -d -v

# Gerando build
RUN go build -o /go/bin/main

# Imagem simplificada com Scratch
FROM scratch

# Definição do diretório principal
WORKDIR $GOPATH/src/golang/main/

# Copiando arquivos
COPY --from=builder /go/bin/main /go/bin/main

EXPOSE 8080

ENTRYPOINT ["/go/bin/main"]