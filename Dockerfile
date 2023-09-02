FROM node:lts

# �������� ���������� ����������
WORKDIR /usr/src/app

# ��������� ������������
# ������ �������� ("*") ������������ ��� ���� ����� �� �����������
# ����������� ��� �����: package.json � package-lock.json
COPY package*.json ./

RUN npm install
# ���� �� �������� ������ ��� ��������
# RUN npm ci --omit=dev

# �������� �������� ���
COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]