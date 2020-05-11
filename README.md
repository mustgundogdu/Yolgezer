# Yolgezer
Automatic osint tool

The yolgezer tool performs queries that have been categorized in the mysql database by searching a web browser.
This categorization is numbered as 1,2,3 by default.

Specific and important file queries are numbered at number 1, number 2 contains wordpress site queries and number 3 contains valid queries for the file type.
This categorization has been realized with the foreign key feature. You can also create the field you want and add queries.
There are two tables in the GHDB database, these are 'dork.query_type' and 'dork.query'.
The 'dork' scheme that draws your attention here is that it was created while generating a foreign key.

The contents of the two tables in the added GHDB database are as follows.

![](https://github.com/mustgundogdu/Yolgezer/blob/master/screenshots/query_type_table.png)

As in the table above, 'query_type' table content and columns are seen.
Here, the 'query_id' column is a primary key, and the 'query_type' column has a description of these numbers.(As we mentioned above.)
In our other table, 'dork.query', we have our queries and their field numbers.


![](https://github.com/mustgundogdu/Yolgezer/blob/master/screenshots/query.png)



As you can see, our queries related to field numbers in the 'dark.query type' table are here.

Let’s make an addition example;



![](https://github.com/mustgundogdu/Yolgezer/blob/master/screenshots/insert.png)


we have added your query as seen now let's add a field.


![](https://github.com/mustgundogdu/Yolgezer/blob/master/screenshots/insert1.png)



The yolgezer tool is extremely easy to use.First of all, it is enough to add the required target and query type after the operation you want to do with the -o option.


For example:

![](https://github.com/mustgundogdu/Yolgezer/blob/master/screenshots/yolgezer_run1.png)





![](https://github.com/mustgundogdu/Yolgezer/blob/master/screenshots/result1.png)





![](https://github.com/mustgundogdu/Yolgezer/blob/master/screenshots/result2.png)




it can also perform some dns and whois queries.(Uses dig and whois tools.)

![](https://github.com/mustgundogdu/Yolgezer/blob/master/screenshots/infodns.png)

              INSTALLATION and REQUIREMENTS
              
First of all, mysql server must be installed on your system and configuring mysql.

*$sudo apt update
*$sudo apt install mysql-server
*$sudo mysql_secure_installation

then we load the other requirement python mysql module.
*$pip install mysql-connector-python

Then we perform the download and run the configuration shell file.

*git clone https://github.com/mustgundogdu/Yolgezer.git

*cd Yolgezer/conf/
*./conf_command.sh








