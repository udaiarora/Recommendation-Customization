Cloning Git repo:

option 1 (easy)

- In https://github.com/udaiarora/Recommendation-Customization page, look out for 'Clone in the Desktop' option in the right hand side.
- Click  it, install Git client ( if you havent installed it ). 
- If Git client is already installed you can follow the normal installation procedure and you can clone the project in your desired location. 
Then you can import the project as the way, we import an existing project in eclipse.

option 2( commandline)

All these can be done commandline, This is not preferred unless u are comfortable with command prompt.
Then you can import the project as the way, we import an existing project in eclipse.
Option 3 :

Download the ZIP file (from the same github link) and use the same way you "Import a Project" in eclipse.  


cehck if the following pre-requisites are taken care.

MySQL installation

Option 1 : Install XAMPP> https://www.apachefriends.org/download.html
Its very easy process and after installation you can start the PHPMyAdmin and access the MySQL DB from there. 
Please set up an easy password while installing, as you would be using the same in database.properties file of our project. ( Ie our project uses these config stuffs)0
Its better if u keep username as root and password as admin. If you change them accordingly you have to make changes in Recommendation-Customization / RecommendationSystem / WebContent / WEB-INF / properties / database.properties file.

Option 2: Use MySQL Workbench or any other thirdparty clients.

For example the database.properties file has the following contents, this needs to be updated as per your username and password
database.driver=com.mysql.jdbc.Driver
database.url=jdbc:mysql://localhost:3306/recommendation_system
database.user=root
database.password=admin
hibernate.dialect=org.hibernate.dialect.MySQLDialect
hibernate.show_sql=true
hibernate.hbm2ddl.auto=update

Please donot change the name of the Folder (Recommendation-Customization) or anyother folders because there might be changes required accordingly in the spring config files.


Pointers abt EGit:

Please download the following plug in egit as given in http://www.vogella.com/tutorials/EclipseGit/article.html. 
This will be useful when you try to commit the code directly from eclipse. 
If the plugin is installed, right click on the project -> Team -> egit -> commit , We can commit in this manner. 
Similarily, the your code and the previous code needs to be compared before you commit. 

Git issues:

Please create a branch from the main tree(main branch) and work on your changes. Then before merging your branch to the main one, please compare the changes, then commit the code. 
We dont want to the code to be over written please lets keep that in mind, below given link gives more idea abt git branches and merge.
http://git-scm.com/book/en/Git-Branching-Basic-Branching-and-Merging

Though it is not mandatory, try keeping your workspace and git folder separate. This is to avoid confusion and overwriting of your work/ others work.


