FROM mcr.microsoft.com/playwright:v1.40.1-jammy

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY package.json /app/
COPY tests/ /app/tests/
COPY playwright.config.ts /app/

RUN npm install
RUN npx playwright install