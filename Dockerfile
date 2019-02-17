FROM continuumio/anaconda3
RUN conda install -y -q -c conda-forge xgboost
RUN conda install -y -q -c conda-forge mlxtend
RUN conda install -y -q -c menpo pathlib 
RUN  /usr/bin/yes | pip install -i https://test.pypi.org/simple/ lambdadataInvegat2
RUN mkdir /tmp/test
ADD run_lambdadataInvegat2.py /
ADD test_compare_linear_xgboost.py /
ENTRYPOINT [ "python", "./run_lambdadataInvegat2.py" ]
