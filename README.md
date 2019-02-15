# lambda_data
DS-Unit-3-Sprint-1-Software-Engineering module1-python-modules-packages-and-environments


To use the Dockerfile 
  1. go to the Dockefile directory, make sure the files run_lambdadataInvegat2.py and  test_compare_linear_xgboost.py are there.
  2. docker build -t compare_linear_xgboost:0.0.47  .
  3. docker run -d $(docker images compare_linear_xgboost -q)
  4. docker cp $(docker container ls -lq):/tmp .

Step file will create a 'tmp' directory of png charts with a linear regression class weight of 1 to ratio in the filename for  https://colab.research.google.com/drive/1YglzxRw6u32fmu0jQ4tsA-l9vh7nouf8#scrollTo=TcpoWCUq5xNV data, and xgboost 'binary:logistic'
 row weight of the same 1 to ratio in the filename.   Though there are many differences both the linear regression class weights and xgboost 'binary:logistic' row weights work in generally the same way for the ratio range tested.   Xgboost almost always had better results.

To use test
  1. Do the first 2 steps above if not already done.
  2. docker run -i -t $(docker images compare_linear_xgboost -q)
  3. from the container prompt at the root "python test_compare_linear_xgboost.py"
  4. exit  



