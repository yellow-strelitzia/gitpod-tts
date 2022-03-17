FROM gitpod/workspace-full:latest

# install custom tools, runtime, etc.

USER root
# Install custom tools, runtime, etc.
#RUN apt-get update && apt-get install -y firefox net-tools \
#    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

RUN pip3 install Flask flask-cors GitPython
RUN pip3 install TTS
RUN mkdir /home/gitpod/.cache/pip
RUN chown -R gitpod:gitpod /home/gitpod/.cache/pip

USER gitpod
# Apply user-specific settings
#ENV ...

# Give back control
USER root
