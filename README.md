# NestJS Prisma Docker

> DON'T commit .env files into version control, add `.env` to `.gitignore`. `.env` files are added here as an example.

Develop the Nest application

```bash
npm install

cp .env.example .env

npx prisma generate

npm run start:dev
```

## Docker Compose

```bash
docker-compose up
# or detached
docker-compose up -d
```
