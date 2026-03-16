## **What is spring?**



* **Spring is open source:** while building any web application/networking app we do not need to purchase any license from any vendor(like apache). It is free



* **Light weight:** We can use any particular of all the spring modules to build an app.

&nbsp;

* **Java based framework** 





**Spring modules**

**==================**



1\. Spring Core

2\. Spring JDBC

3\. Spring Data JPA

4\. Spring ORM

5\. Spring Web MVC

6\. Spring Boot: It is auto configuration of embedded server.

7\. Spring REST API: Used to implement restful webservices for distributed application(Application built with different language). Using XML,JSON format

8\. Spring AoP (Aspect Oriented Programming)

9\. Spring Security

10\. Spring cloud





## **Why Spring?**



1. &nbsp;Open Source 
2. &nbsp;Light weight
3. **\*\* It is used to reduce the complexities faced while developing the application.**

&nbsp;	



&nbsp;	**------COMPLEXITIES----------**

&nbsp;	\* Establish Connection

&nbsp;	\* Create platform

&nbsp;	\* Begin the transaction

&nbsp;	\* Commit the transaction

&nbsp;	\* Creation of object of the class





#### **Spring Core**



Basic module of Spring which give complete info about the Ioc And Dependency Injection



IoC-Inversion of Controller



##### 	**Task of IOC			Task of JVM**

**---------------------------------------------------------------------------------------------------**

&nbsp;						|	

Creation of the **Bean** of the class		| Creation of the **object** of the class

&nbsp;						|

Injecting the values into the Primitive		| Injecting the values into the Primitive

&nbsp;						|

Injecting the values into the Non Primitive	| Injecting the values into the Non Primitive

&nbsp;						|

Managing the **Bean				|** Managing the **Object**

						**|**

**Bean Life cycle					| Execution of line by line code**









##### &nbsp;**Object :** If the object or instance is created by the JVM we call it **Object.**

##### &nbsp;**Bean :** If the object is created without using new keyword by the IoC container we call it as **Bean.**





**Why the container is named as inversion of controller?**



-> Because it reverses the traditional way of creating the object, managing the objects**(Beans specifically)** by using **new keyword.**



**-------------------------------**

###### **3 IoC Containers**

**-------------------------------**

* **BeanFactory (I) :** It is a supermost interface used to develop stand alone app(that runs without internet on the local machine), to perform 5 Task of IoC container and it understands

&nbsp;		     only xml Configuration.



* **ApplicationContext (I) (extends BeanFactory):** It is a extension of Beanfactory interface used to develop stand alone app(that runs without internet on the local machine), to perform 5 						  Task of IoC container and it understands all three Configurations.



* **WebApplicationContext (I) (extends ApplicationContext):** It is a extension of Beanfactory interface used to develop stand alone app(that runs without internet on the local machine), to 							   perform 5 Task of IoC container and it understands all three Configurations. 



###### 

###### 

###### **How many ways we can create Bean?**



We can use anyone of the following: 



* XML configuration
* Java Based Configuration
* Annotation Configuration 
* **More 2 can be used for SpringBoot:** application.properties, application.xml



**------------------------------**

##### **BeanFactory(I)**

**------------------------------**

###### **Implementation class:** 



		**XmlBeanFactory(C)** [**\[https://media.geeksforgeeks.org/wp-content/uploads/20260227111947198575/DifferenceBetweenBeanFactory-andApplicationContext.webp]**]([https://media.geeksforgeeks.org/wp-content/uploads/20260227111947198575/DifferenceBetweenBeanFactory-andApplicationContext.webp])



* It is the implementation class of BeanFactory.
* It is used to upcast the object of BeanFactory.
* It is used to show the path of XML configuration. 



**--------------------------------**

##### **ApplicationContext(I)**

**--------------------------------**

###### **Implementation class:**



		**FileSystemXmlApplicationContext(C)** [**\[https://media.geeksforgeeks.org/wp-content/uploads/20260227111947198575/DifferenceBetweenBeanFactory-andApplicationContext.webp]**](https://media.geeksforgeeks.org/wp-content/uploads/20260227111947198575/DifferenceBetweenBeanFactory-andApplicationContext.webp)



* It is the implementation class of ApplicationContext.
* It is used to upcast the object of ApplicationContext.
* It is used to show the XML configuration, which is present inside the system but outside the project.





		**ClassPathXmlApplicationContext(C)** 



* It is the implementation class of ApplicationContext.
* It is used to upcast the object of ApplicationContext.
* It is used to show the path of  XML configuration, which is present inside the project.



&nbsp;		



&nbsp;	      **AnnotaionConfigApplicationContext(C)**


* It is the implementation class of ApplicationContext.
* It is used to upcast the object of ApplicationContext.
* It is used to show the path of Component class (Annotation and java based configuration). 





To get the IoC container of the implementation classes we need to import Spring context dependency.







