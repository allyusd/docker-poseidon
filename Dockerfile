FROM allyusd/python3-cpp

ARG user=ci
ARG group=ci
ARG uid=1738552204
ARG gid=1738539521

ENV HOME /home/${user}
RUN groupadd -g ${gid} ${group}
RUN useradd -l -c "ci user" -d $HOME -u ${uid} -g ${gid} -m ${user}

RUN pip install conan
RUN apt-get update && apt-get install curl subversion git -y
