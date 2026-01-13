FROM node:24.12 AS base
WORKDIR /app

COPY package.json package-lock.json* ./
RUN npm install
COPY . .
RUN npm run build

FROM node:24.12 AS production
WORKDIR /app

COPY --from=build /app/.output /app

EXPOSE 3000/tcp
ENTRYPOINT [ "npm", "run", "/app/server/index.mjs" ]


