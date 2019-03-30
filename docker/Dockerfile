FROM tensorflow/tensorflow:2.0.0a0-py3-jupyter

#upgrade pip
RUN pip3 install --upgrade pip

#upgrade numpy
#RUN pip3 install --upgrade numpy

#install libraries
RUN pip3 install keras
RUN pip3 install h5py
RUN pip3 install pandas

#we run the same command that tensorflow/tensorflow
CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter notebook --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root"]
