

# Spring Framework Notes

## What is Spring?

**Spring** is a **Java-based open-source framework** used to build **enterprise and web applications** easily.

### Key Characteristics

* **Open Source**
  While building web or networking applications, we do not need to purchase any license from any vendor. Spring is completely free.

* **Lightweight**
  Developers can use only the required modules of Spring instead of the entire framework.

* **Java-Based Framework**
  Spring is built on Java and widely used for enterprise application development.

---

# Spring Modules

1. **Spring Core**

2. **Spring JDBC**

3. **Spring Data JPA**

4. **Spring ORM**

5. **Spring Web MVC**

6. **Spring Boot**
   Provides **auto-configuration with an embedded server**.

7. **Spring REST API**
   Used to implement **RESTful web services** for distributed applications using **JSON or XML** formats.

8. **Spring AOP (Aspect Oriented Programming)**

9. **Spring Security**

10. **Spring Cloud**

---

# Why Spring?

1. Open Source
2. Lightweight
3. Reduces the complexity while developing applications

---

## Complexities Without Spring

While developing applications manually, developers must handle:

* Establishing database connection
* Creating the platform/environment
* Beginning the transaction
* Committing the transaction
* Creating objects of classes

Spring helps **reduce these complexities**.

---

# Spring Core

The **Spring Core module** provides the foundation of the framework and introduces:

* **IoC (Inversion of Control)**
* **Dependency Injection (DI)**

---

# IoC – Inversion of Control

IoC is a design principle where **the control of object creation and dependency management is transferred from the programmer to the Spring container**.

---

## Task Comparison

| IoC Container Tasks                           | JVM Tasks                                     |
| --------------------------------------------- | --------------------------------------------- |
| Creation of **Bean** of the class             | Creation of **Object** of the class           |
| Injecting values into **Primitive types**     | Injecting values into **Primitive types**     |
| Injecting values into **Non-Primitive types** | Injecting values into **Non-Primitive types** |
| Managing the **Bean**                         | Managing the **Object**                       |
| **Bean Life Cycle Management**                | Execution of code line by line                |

---

# Object vs Bean

### Object

If an instance of a class is created **by the JVM using the `new` keyword**, it is called an **Object**.

### Bean

If an object is created **by the Spring IoC container without using the `new` keyword**, it is called a **Bean**.

---

# Why is it called Inversion of Control?

Because Spring **reverses the traditional way of object creation**.

Traditional approach:

```
Developer creates objects using new keyword
```

Spring approach:

```
Spring Container creates and manages Beans
```

---

# IoC Containers

Spring provides **three IoC containers**.

---

## 1. BeanFactory (Interface)

* The **root interface** of the Spring IoC container.
* Used mainly for **standalone applications**.
* Performs the **5 tasks of IoC container**.
* Supports **XML configuration only**.

---

## 2. ApplicationContext (Interface)

* **Extends BeanFactory**
* More advanced container.
* Used for **enterprise and standalone applications**.
* Supports:

  * XML configuration
  * Java configuration
  * Annotation configuration

---

## 3. WebApplicationContext (Interface)

* **Extends ApplicationContext**
* Used specifically for **web applications**.

---

# Ways to Create Beans

Beans can be created using the following configurations:

1. **XML Configuration**
2. **Java-Based Configuration**
3. **Annotation-Based Configuration**

Additional configurations used in **Spring Boot**:

4. `application.properties`
5. `application.yml`

---

# BeanFactory Implementation

## XmlBeanFactory (Class)

* Implementation class of **BeanFactory**
* Used to **upcast the object of BeanFactory**
* Used to **load XML configuration**

Example:

```
BeanFactory factory = new XmlBeanFactory(resource);
```

---

# ApplicationContext Implementations

## 1. FileSystemXmlApplicationContext

* Implementation of **ApplicationContext**
* Loads **XML configuration from the file system (outside the project)**.

---

## 2. ClassPathXmlApplicationContext

* Implementation of **ApplicationContext**
* Loads **XML configuration from the project classpath**.

Example:

```
ApplicationContext context =
new ClassPathXmlApplicationContext("applicationContext.xml");
```

---

## 3. AnnotationConfigApplicationContext

* Implementation of **ApplicationContext**
* Used for **Java configuration and annotation-based configuration**.

Example:

```
ApplicationContext context =
new AnnotationConfigApplicationContext(AppConfig.class);
```

---

# Spring Context Dependency

To use the **IoC container**, we must include the **Spring Context dependency**.

Example (Maven):

```xml
<dependency>
 <groupId>org.springframework</groupId>
 <artifactId>spring-context</artifactId>
 <version>6.x.x</version>
</dependency>
```

---

# Summary

Spring simplifies enterprise application development by providing:

* Dependency Injection
* IoC Container
* Modular Architecture
* Integration with databases, security, and cloud services

It significantly **reduces boilerplate code and complexity** in Java applications.

---

