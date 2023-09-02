FROM node:lts

# создание директории приложени€
WORKDIR /usr/src/app

# установка зависимостей
# символ астериск ("*") используетс€ дл€ того чтобы по возможности
# скопировать оба файла: package.json и package-lock.json
COPY package*.json ./

RUN npm install
# ≈сли вы создаете сборку дл€ продакшн
# RUN npm ci --omit=dev

# копируем исходный код
COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]