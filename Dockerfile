FROM bitnami/node:8.8.1-r0 as builder

# Create app directory
RUN mkdir -p /app/image-resizer
WORKDIR /app/image-resizer

RUN npm install -g tripviss/image-resizer --unsafe
RUN image-resizer new
RUN npm install --unsafe
COPY process.yaml /app/image-resizer

FROM bitnami/node:8.8.1-r0-prod
RUN mkdir -p /app/image-resizer
WORKDIR /app/image-resizer
RUN npm install --global pm2 --unsafe
COPY --from=builder /app/image-resizer .
EXPOSE 3000

CMD ["pm2-docker", "--raw", "process.yaml"]