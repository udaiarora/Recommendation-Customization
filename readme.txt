Cloning Git repo:

Choose any one option:
option 1 (easy)

- In https://github.com/udaiarora/Recommendation-Customization page, 
look out for 'Clone in the Desktop' option in the right hand side.
- Click  it, install Git client ( if you havent installed it ). 
- If Git client is already installed you can follow the normal installation procedure 
and you can clone the project in your desired location. 
Then you can import the project as the way, we import an existing project in eclipse.

option 2( commandline)

All these can be done commandline, This is not preferred unless u are comfortable with command prompt.
Then you can import the project as the way, we import an existing project in eclipse.
Option 3 :

Download the ZIP file (from the same github link) and use the same way you "Import a Project" in eclipse.  


check if the following pre-requisites are taken care.

MySQL installation

Option 1: Install xampp for establishing the MySQL server
http://downloads.sourceforge.net/project/xampp/XAMPP%20Windows/1.8.3/xampp-win32-1.8.3-4-VC11-installer.exe
      Configure xampp MySQL:
          1.1. In the XAMPP Control panel, start Apache and MySQL servers.
          1.2. In command prompt, navigate to C:\xampp\mysql\bin
          1.3. Type the following command to set new password (we use ‘admin’ as password) 
	              mysqladmin.exe –u root password admin
          1.4. Edit the file, C:\xampp\phpMyAdmin\config.inc.php. Update the password value.
 	              $cfg['Servers'][$i]['password'] = 'admin'; 
          1.5. Click on Admin button in XAMPP Control panel. This will navigate to the phpMyAdmin web page. 
          It is the web interface of our database server and it would show that the database server is running in 127.0.0.1 and PORT = 3306.
          1.6. Click on Import menu and upload the recommendation_system.sql file available in the project folder. Click Go.
          1.7 On the left panel, the new database called recommendation_system will be displayed. 
          Click on the various menu options to browse through the database tables.  


Option 2: Use MySQL Workbench or any other thirdparty clients.

For example the database.properties file has the following contents, this needs to be updated as per your username and password
database.driver=com.mysql.jdbc.Driver
database.url=jdbc:mysql://localhost:3306/recommendation_system
database.user=root
database.password=admin
hibernate.dialect=org.hibernate.dialect.MySQLDialect
hibernate.show_sql=true
hibernate.hbm2ddl.auto=update

Please donot change the name of the Folder (Recommendation-Customization) or anyother folders 
because there might be changes required accordingly in the spring config files.


EGit Plug in for Eclipse:

EGit is used to commit changes to source files and push it to GitHub from Eclipse.

1. Install egit plugin in eclipse (Go to Eclipse->Help->Eclipse Marketplace, search for Egit and click install)
2. Clone the project from GitHub to your local directory. 
	2.1 Eclipse->Window->Show view-> Other->Git->Git Repositories
	2.2 Right click on Git Repository panel view
	2.3 click on Paste Repository path or URI
	2.4 Enter the URI - https://github.com/udaiarora/Recommendation-Customization.git 
		            Repository Path - /udaiarora/Recommendation-Customization.git
                Your GitHub Username and Password

Follow the turotial given in http://www.vogella.com/tutorials/EclipseGit/article.html. 

If the plugin is installed, right click on the project -> Team -> egit -> commit , We can commit in this manner. 
Similarily, the your code and the previous code needs to be compared before you commit.

Git issues:

Please create an individual branch from the main tree(master branch) and work on your changes. 
Then before merging your branch to the main one, please compare the changes, then commit the code. 
We dont want to the code to be over written please lets keep that in mind, 
below given link gives more idea abt git branches and merge.
http://git-scm.com/book/en/Git-Branching-Basic-Branching-and-Merging

Though it is not mandatory, try keeping your workspace and git folder separate. 
This is to avoid confusion and overwriting of your work/ others work.

To Execute the Project:

1. Install Apache Tomcat Server version 7.0 
    Eclipse automatically does this. Window->show view->servers.
    Right click on servers panel. New->Server, choose Apache Tomcat 7->next, click on Download and install
2. Right click the project folder and click run as server.
3. In login page, username = admin@uofa , password = admin121
