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

 

WORKDIR /home/$NB_USER/

USER $NB_USER

