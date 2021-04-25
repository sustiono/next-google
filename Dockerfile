FROM node:14-alpine

# Create app directory
WORKDIR /app

# Copy source codes & Install app dependencies
COPY . .
RUN yarn

# Expose port
EXPOSE 3000

# build app
RUN yarn build

# start aop
CMD ["yarn", "start"]