# 🚀 Star Wars Full-Stack Application

This is a full-stack Star Wars-themed application that includes:

- 🔐 **Authentication & Token Issuance** using OpenIddict in ASP.NET Core
- 🚀 **Starship Management API** in .NET 8
- 🌐 **Angular Frontend** with Material UI
- 🛢️ **SQL Server Express** running in a Docker container
- 🐳 Fully containerized with **Docker** and **Docker Compose**

---

## 📁 Project Structure

```
StarWars/
├── docker-compose.yml
├── star-wars-api/                # .NET Backend
│   └── star-wars-api.csproj
├── star-wars.entity/             # EF Core Entities
│   └── star-wars.entity.csproj
├── starships-frontend/           # Angular Frontend
│   ├── Dockerfile
│   └── browser/                  # Angular build output
└── README.md
```

---

## 🌐 Frontend

### 🔧 Stack
- Angular 17+
- Angular Material UI
- Standalone Components
- Reactive Forms
- HttpClientModule
- Integrated JWT Auth
- Dockerized using Nginx

### 🐳 Docker Setup

#### `starships-frontend/Dockerfile`

```Dockerfile
# Stage 1: Build Angular App
FROM node:18-alpine AS build
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build

# Stage 2: Serve with Nginx
FROM nginx:alpine
COPY --from=build /app/dist/starships-frontend/browser /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
```

### 📦 Build & Run (independent)

```bash
cd starships-frontend
docker build -t starships-frontend .
docker run -d -p 4201:80 --name starships-ui --network swapi-network swapi-frontend
```

---

## 🔙 Backend

### 🔧 Stack
- .NET 8 (ASP.NET Core Web API)
- EF Core with SQL Server
- OpenIddict for OAuth2 + OpenID Connect
- JWT Authentication
- Swagger API UI
- CORS + HTTPS support

### 🐳 Docker Setup

#### `star-wars-api/Dockerfile`

```Dockerfile
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
WORKDIR /app
EXPOSE 5198

FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY ["star-wars-api/star-wars-api.csproj", "star-wars-api/"]
COPY ["star-wars.entity/star-wars.entity.csproj", "star-wars.entity/"]
RUN dotnet restore "star-wars-api/star-wars-api.csproj"
COPY . .
WORKDIR "/src/star-wars-api"
RUN dotnet build -c Release -o /app/build

FROM build AS publish
RUN dotnet publish -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "star-wars-api.dll"]
```

### 📦 Build & Run (independent)

```bash
docker build -t star-wars-api -f star-wars-api/Dockerfile .
docker run -d -p 5198:5198 --name star-wars-api --network swapi-network star-wars-api
```

---

## 🗃️ Database (SQL Server)

### 🔧 Stack
- SQL Server 2019 Express
- Persisted volume for data
- Password protected (`YourStrong!Passw0rd`)
- Port 1433 exposed for remote management

### 🐳 Docker Setup

```bash
docker run -e "ACCEPT_EULA=Y" \
           -e "MSSQL_SA_PASSWORD=YourStrong!Passw0rd" \
           -p 1433:1433 \
           --name sqlserver \
           --network swapi-network \
           -d mcr.microsoft.com/mssql/server:2019-latest
```

---

## 🧩 Docker Compose

### `docker-compose.yml`

```yaml
version: '3.9'

services:
  backend:
    build:
      context: ./star-wars-api
      dockerfile: Dockerfile
    ports:
      - "5198:5198"
    networks:
      - swapi-network
    depends_on:
      - db

  frontend:
    build:
      context: ./starships-frontend
      dockerfile: Dockerfile
    ports:
      - "4201:80"
    networks:
      - swapi-network
    depends_on:
      - backend

  db:
    image: mcr.microsoft.com/mssql/server:2022-latest
    container_name: sqlserver
    environment:
      SA_PASSWORD: "YourStrong!Passw0rd"
      ACCEPT_EULA: "Y"
    ports:
      - "1433:1433"
    networks:
      - swapi-network
    volumes:
      - swapi-data:/var/opt/mssql

networks:
  swapi-network:

volumes:
  swapi-data:
```

---

## 🔌 Environment Configuration

### Frontend `src/environments/environment.ts`

```ts
export const environment = {
  production: false,
  apiUrl: 'http://localhost:5198/api'
};
```

### Backend `appsettings.json`

```json
"ConnectionStrings": {
  "DefaultConnection": "Server=db;Database=StarWarsDb;User Id=sa;Password=YourStrong!Passw0rd;"
}
```

---

## 🚀 Run the Entire Stack

```bash
docker compose up --build
```

---

## 🛠️ Useful Commands

```bash
docker ps                 # View running containers
docker compose down       # Stop all containers
docker volume prune       # Cleanup unused volumes
docker exec -it swapi-db /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P "YourStrong!Passw0rd"
```

