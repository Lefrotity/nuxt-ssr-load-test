FROM node:24.12 AS base
WORKDIR /app

FROM base AS builder
COPY package.json ./
RUN npm i --omit=dev
COPY . .
RUN npm run build

FROM base AS out
COPY --from=builder /app/.output /app
COPY run.sh .