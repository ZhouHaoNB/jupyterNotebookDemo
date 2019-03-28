prebuild/jupyter-caf-kernel/README.md

An Online jupyterNotebook  which contain C,java,python, and fortran in Docker 


Upload the whole file and then run ' docker build -t  [repository]:[Tag]  . ' to create the docker images

then enter ' docker run -i -t -d -p 8888:8888 [imageId] '

then  enter ' docker exec -i -t [containerId] /bin/bash' to get into the container   

then enter 'jupyter notebook password' to change the password

after creating a new password then 'exit' to get out of the container

then enter 'docker restart [containerId]' to restart the container

open the browser and enter 'host:port' and enter the password which you have created

一个在线的代码编译器支持C,java,python和fortran

下载整个文件夹然后输入'docker build -t [repository]:[Tag]  . ' 去创建docker镜像

然后输入  ' docker run -i -t -d -p 8888:8888 [imageId] '

然后输入  ' docker exec -i -t [containerId] /bin/bash' 进入容器内部

然后输入  'jupyter notebook password'去修改密码

密码改完后输入'exit'从容器内部退出

输入 'docker restart [containerId]' 来重启容器

打开浏览器，输入地址端口号，然后输入你所创建的密码
