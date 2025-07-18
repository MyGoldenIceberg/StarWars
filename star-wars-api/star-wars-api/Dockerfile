# Stage 1: Base runtime image
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
WORKDIR /app
EXPOSE 5198
EXPOSE 8080

# Stage 2: Build
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
ARG BUILD_CONFIGURATION=Release
WORKDIR /src
COPY ["star-wars-api/star-wars-api.csproj", "star-wars-api/"]
COPY ["star-wars.entity/star-wars.entity.csproj", "star-wars.entity/"]
RUN dotnet restore "star-wars-api/star-wars-api.csproj"
COPY . .
WORKDIR "/src/star-wars-api"
RUN dotnet build "star-wars-api.csproj" -c $BUILD_CONFIGURATION -o /app/build

# Stage 3: Publish
FROM build AS publish
ARG BUILD_CONFIGURATION=Release
RUN dotnet publish "star-wars-api.csproj" -c $BUILD_CONFIGURATION -o /app/publish /p:UseAppHost=false

# Stage 4: Final image
FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "star-wars-api.dll"]
