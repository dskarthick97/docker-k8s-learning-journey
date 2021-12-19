FROM ubuntu:latest

ARG USER_ID
ARG GROUP_ID

RUN groupadd -g ${GROUP_ID} appuser
RUN useradd -r -l -u ${USER_ID} -g appuser appuser

USER appuser

ENTRYPOINT [ "sleep", "infinity" ]