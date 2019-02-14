FROM continuumio/anaconda3
RUN conda install -y -q -c conda-forge xgboost
RUN conda install -y -q -c conda-forge mlxtend
RUN  /usr/bin/yes | pip install -i https://test.pypi.org/simple/ lambdadataInvegat2
ADD run_lambdadataInvegat2.py /
CMD [ "python", "./run_lambdadataInvegat2.py" ]