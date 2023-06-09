# -*- coding: utf-8 -*-
"""Bank using Pandas.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1jxSWDaM02nj3g8inQxTFoOu-x4-EcAu-
"""

import pandas as pd

bank_df1=pd.DataFrame({ 'Client ID':[1, 2, 3, 4, 5] , 
                        'First Name':['Joneth','Nathan','Jeremiah','Ricky','Kane'],
                        'Last Name':['D','T','T','P','P'],  
                       })
bank_df2=pd.DataFrame({ 'Client ID':[6, 7, 8, 9, 10], 
                        'First Name':['Linda','Cherry','Emily','Zack','Joe'],
                      'Last Name':['P','K','L','K','K'],
                      })
client_salary=pd.DataFrame({'Client ID':[1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
                            "Annual Salary":[90000, 80000, 125000, 10000, 90000, 80000, 75000, 85000, 50000, 70000]
    
})
bank_all = pd.concat([bank_df1,bank_df2])
bank_all=pd.merge(bank_all, client_salary, on = "Client ID")
bank_all

new_client={'Client ID':[11],
           'First Name': ['Terry'],
           'Last Name': ['S'],
           'Annual Salary':[145000]}
new_clientdf=pd.DataFrame(new_client, columns = ['Client ID','First Name','Last Name','Annual Salary'])
new_df=pd.concat([bank_all,new_clientdf], axis = 0)
new_df