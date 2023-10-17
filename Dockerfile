FROM node:16 AS builder
LABEL stage=nodebuilder

WORKDIR /build

ADD package.json .
ADD package-lock.json .
RUN npm install
COPY . .
RUN npm run build


FROM nginx:alpine
LABEL stage=release

COPY --from=builder /build/dist/ /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf