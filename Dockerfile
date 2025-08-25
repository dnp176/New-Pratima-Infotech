FROM nginx:alpine

# Pehle nginx ke default html folder ko clean kar do
RUN rm -rf /usr/share/nginx/html/*

# Apna static site content copy karo
COPY . /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
