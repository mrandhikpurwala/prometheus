FROM mrandhikpurwala/jpetstore AS BUILD_SERVER
ENV WORK_SPACE /opt/workspace
RUN mkdir -p ${WORK_SPACE}
WORKDIR ${WORK_SPACE}
ADD ./* ${WORK_SPACE}/
RUN mvn clean install
