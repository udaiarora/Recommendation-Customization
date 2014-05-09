Recommendation-Customization
============================

Recommendation and Customization Engine is one of the core services provided by the EasySaaS 
framework. Recommendation engine recommends templates to the user by identifying related templates 
using collaborative filtering techniques. Customization Engine lets the user to make appropriate changes 
to the respective templates thereby helping to create a new custom application. 


The Recommendation and Customization engine developed as part of this project will use a database of 
already published templates pertaining to a University System. The user will be able to search, customize 
and use the templates to build an application belonging to University Web Portal system domain. The 
templates available for the user can be categorized into nine different categories as below: 
1. Career Services 
2. Financial Services 
3. Housing services 
4. Courses 
5. Admission services 
6. Facilities/Amenities services 
7. Library 
8. Student self-services 
9. University employee services 


Requirements: 
● The user can create a new application from the templates existing in the database and 
customize it according to their needs. 
● The user can perform a keyword search for the templates that matches their requirements. 
● The system shall recommend top three similar templates using collaborative filtering 
techniques. 
● The user can add the recommended templates to his application. 
● The user can customize any or all of the templates being used by his application. 
● The system should allow the user to customize the following components of a template. 
o GUI 
o Workflow 
o Data model 
o Services 
● The system should save the customizations to a template in the database once the user decides 
to finalize the changes done to a template. 


Assumptions 
● User Management is out of scope for this project hence the application uses pre-created user 
credentials. 
● A template consists of GUI, Work-Flow, Data Model and Service components and the system has 
access to the database of already published templates. 
● The templates and components provided or listed by the system are not implemented to be 
working components in the user’s SaaS application, but they are just a mock representation of 
how the components would appear in the user’s application. 
● Each template will contain one and only one of each- GUI, Workflow, Service and data model 
● At the time of delivery, it is assumed that the system has been used by a few users and the 
system has been collecting and maintaining the history of those users and their template 
subscriptions in order for it to make the recommendations. 
● The system will not support multiple user roles and each user is assumed to perform the role of 
an administrator of the corresponding organization. 
● Recommendation will be made only for the kind of template to be used and not the 
components of the templates. 
  
  
Limitations: 
● The users can only do a specific set of customizations that are permitted by the system. 
The users cannot create code-level custom objects or fields. 
● The users can only use the templates and / or components that are available in the 
system’s database. The users cannot request for new templates or components. 
