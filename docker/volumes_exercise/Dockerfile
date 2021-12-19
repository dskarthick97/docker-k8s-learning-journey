FROM node:14

# ARG USER_ID
# ARG GROUP_ID

# RUN userdel -f www-data && \
#     if getent group www-data; then groupdel www-data; fi && \
#     groupadd -g ${GROUP_ID} karthicksabari && \
#     useradd -l -u ${USER_ID} -g karthicksabari karthicksabari && \
#     install -d -m 0755 -o karthicksabari -g karthicksabari /home/karthicksabari && \
#     chown --changes --silent --no-dereference --recursive --from=33:33 ${USER_ID}:${GROUP_ID} \
#         ~/

# RUN groupadd -g ${GROUP_ID} karthicksabari && \
#     useradd -l -u ${USER_ID} -g karthicksabari karthicksabari && \
#     install -d -m 0775 -o karthicksabari -g karthicksabari /home/karthicksabari && \
#     chown --changes --silent --no-dereference --recursive --from=33:33 ${USER_ID}:${GROUP_ID} \
#         /home/karthicksabari \
#         /var/log \
#         /usr/local

# RUN groupadd -g ${GROUP_ID} karthicksabari && \
#     useradd -l -u ${USER_ID} -g karthicksabari karthicksabari

# USER karthicksabari

# WORKDIR /home/karthicksabari/app

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

# VOLUME [ "/app/feedback" ]

CMD [ "node", "server.js" ]