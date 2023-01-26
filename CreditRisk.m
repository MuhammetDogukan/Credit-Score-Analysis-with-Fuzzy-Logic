%%
clc;
clear;
f=readfis('creditRisk.fis');
a=input('Revolving Utilization of Unsecured Lines=');%[0 4]
b=input('Debt Ratio=');%[0 4]
c=input('Monthly Income=');%[0 20000]
d=input('Number of Overdue Debts=');%[0 17]
e=input('Number of Open Credit Loans=');%[0 53]
g=input('Number Real Estate Loans or Lines=');%[0 21]
h=evalfis([a b c d e g],f);
disp(['Credit Risk= ',num2str(h)]);
%credit risk[0 1900]
%%
clc;
clear;
data=readtable('projeData');
f=readfis('creditRisk.fis');
x=input('Please enter the ID you want to know the credit risk =');%[0 4]
a=data(x,4);%[0 4]
b=data(x,7);%[0 4]
c=data(x,9);%[0 20000]
d=data(x,14);%[0 17]
e=data(x,10);%[0 53]
g=data(x,15);%[0 21]
a=table2array(a);
b=table2array(b);
c=table2array(c);
d=table2array(d);
e=table2array(e);
g=table2array(g);
h=evalfis([a b c d e g],f);
disp(['Credit Risk= ',num2str(h)]);
%credit risk[0 1900]