FROM allyusd/python3-cpp

RUN pip install conan
RUN apt-get update && apt-get install curl subversion git -y
