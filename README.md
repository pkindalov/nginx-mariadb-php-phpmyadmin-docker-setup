# nginx-mariadb-php-phpmyadmin-docker-setup
Simple setup with configured docker-compose.yaml file for creating a local projects

#HOW TO USE?<br />
1.In docker-compose.yaml you can change network name for containers to be something different than test.
2.Start docker. If you don't have it then you must install it first.
3.In repo directory you must create folder dbdata. This is the place or mount bind where mariadb will keep its data. By default

I configure docker-compose.yaml to look dbata folder in the current repository directory. If you want to put it somewhere else then
you must open docker-compose.yaml with editor, go to line 37 and you must see the following line<br />
- ./dbdata:/var/lib/mysql<br />
then you must replace ./dbdata with full path to directory when you want to keep database files. You can also use a different name for the folder.

4.Now, open terminal form directory when the docker-compose.yaml file is it located and run the following command<br />

docker-compose up -d<br />

5.If there are no errors the containers must be running - 4 of 6. The last 2 for the composer and npm still in progress. They are something like
utility containers and can be run individually. 

6.To check if everything is okay, open the browser and put http://localhost/test and you must see php info. Also, you can check if phpmyadmin is working correctly
typing http://localhost:8080 - must see it if everthing is okay.

7.You must put or start your project in src folder. /You can delete test folder or use it/. For example in src folder you create another folder with your project name.

#WORK STILL IN PROGRESS...
