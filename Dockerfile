FROM sourceryinstitute/jupyter-caf-kernel:120b01234461

MAINTAINER vdi_development

COPY index.ipynb ${HOME}
# COPY examples ${HOME}


USER root




WORKDIR /

######install python  dependencies such as matlotlib,scipy,numpy,pandas
######安装python依赖包，matplotlib,scipy,numpy,pandas

RUN pip install --upgrade pip --no-cache-dir
RUN pip install --no-cache-dir   matplotlib 
RUN pip install  --no-cache-dir     scipy 
RUN pip install --no-cache-dir      numpy 
RUN  pip install --no-cache-dir  pandas 


####install C kernel
####安装 C 内核

RUN pip install --no-cache-dir jupyter_c_kernel
RUN  install_c_kernel --user

####install jdk v-11
####安装 jdk v-11

WORKDIR /usr/local/bin

COPY ./jdk-11.0.2 /usr/local/bin/jdk-11.0.2


ENV JAVA_HOME=/usr/local/bin/jdk-11.0.2
ENV PATH=$JAVA_HOME/bin:$PATH
ENV JRE_HOME=$JAVA_HOME/jre
ENV CLASSPATH=.:$JAVA_HOME/lib:$JRE_HOME/lib


####install java kernel
####安装java内核

COPY ./ijava-1.1.2 /usr/local/bin/ijava-1.1.2

WORKDIR /usr/local/bin/ijava-1.1.2

RUN python3 install.py --sys-prefix







WORKDIR /home/$NB_USER/

USER $NB_USER

