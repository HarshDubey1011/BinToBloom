FROM node

WORKDIR /usr/src/app

COPY package*.json .

RUN npm install

COPY . .

ENV NEXT_PUBLIC_API_URL_LOCAL=http://localhost:8080/api
ENV NEXT_PUBLIC_OPENCAGE_API_KEY=""

# RUN npm run build

# RUN npm install -g serve

EXPOSE 3000

# CMD ["serve", "-s", "build", "-l", "5000"]

CMD ["npm", "run", "dev"]