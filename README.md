# Fitness-shop

## What is Fitness-shop

Fitness-shop is an online store project design to implement Java Servlet and JSP API. As an online store, customers can navigate througth products catalog, view product description, add and remove product to cart, checkout and validate thiers orders as well as track thiers orders in orders history. It's an full functional and responsive online store web application.

## Fitness-shop Database design

![online store database](https://github.com/patrickHub/fitness-shop/tree/master/WebContent/image/db-schema.png)

In order to be simple, a user account can have many customers associated to his account. A customer can have many delivery addresses. Each time a customer add new address, it become his primary address and the others become his secondary addresses. this will allow a customer to receive his orders at different addresses. Therefore each order is associated to one delivery address. Each customer is also associated to one payment.

It's recommand to use third-party company to store credit and debit card informations in order to avoid external control to ensure that you are complying with all the relevant local laws and security practises.

## Fitness-shop Technology

Well Fitness-shop is powered by

- [x] [Java Servlet 4.0.1](https://www.oracle.com/technetwork/java/index-jsp-135475.html) as server side technology.
- [x] [Java JSP 2.3.3](https://docs.oracle.com/javaee/5/tutorial/doc/bnagx.html) as client side technology in addition with [JSP Standard Action](https://docs.oracle.com/cd/A97336_01/buslog.102/a83726/genlovw3.htm), [Expression Language (EL)](https://docs.oracle.com/javaee/6/tutorial/doc/gjddd.html) and [JSTL](https://docs.oracle.com/javaee/5/tutorial/doc/bnake.html).
- [x] [Bootstrap 4.3](https://getbootstrap.com/) as front-end component library in addition with Javascript.
- [x] [Mysql 5.1.47](https://www.mysql.com/) as Database management system.
- [x] [Maven](https://maven.apache.org/) as software management and comprehension tool.

## Fitness-shop functionalities

- Navigation throught products catalog

[product catalog](https://github.com/patrickHub/fitness-shop/tree/master/WebContent/image/product-catalog.png)

- View a product description

[product description](https://github.com/patrickHub/fitness-shop/tree/master/WebContent/image/product-description.png)

- Adding and removing product to shopping cart

[shopping-cart](https://github.com/patrickHub/fitness-shop/tree/master/WebContent/image/shopping-cart.png)

- Updating delivring address during order checkout process
  with client and server side validation

[update shipping address](https://github.com/patrickHub/fitness-shop/tree/master/WebContent/image/update-shipping-address.png)

- Adding payment card during checkout process with client and server
  side validation

[payment order checkout](https://github.com/patrickHub/fitness-shop/tree/master/WebContent/image/payment-order-checkout.png)

- Order checkout confirmation

[checkout order confirmation](https://github.com/patrickHub/fitness-shop/tree/master/WebContent/image/checkout-order-confirmation.png)

- View order history for authenticated customers

[order history](https://github.com/patrickHub/fitness-shop/tree/master/WebContent/image/order-history.png)

- Track order detail for authenticated customers

[order-history-detail](https://github.com/patrickHub/fitness-shop/tree/master/WebContent/image/order-history-detail.png)

- New customer registration with client and server side validation

[customer registration](https://github.com/patrickHub/fitness-shop/tree/master/WebContent/image/customer-registration.png)

- User authentication with client and server side validation

[customer authentication](https://github.com/patrickHub/fitness-shop/tree/master/WebContent/image/customer-authentication.png)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

To run this application you need to have theses applications install on your operating system regardless on which oparating system your are using:

- [JDK 8](https://www.oracle.com/technetwork/java/javaee/downloads/jdk8-downloads-2133151.html)
  to see which JDK version your are using simply open a terminal an type this command:

```
java -version
```

- [Docker Desktop](https://www.docker.com/products/docker-desktop) 18.09.1 or higher
  To check your docker version type this command on your terminal

```
 docker version
```

Windows 10 operating system should have Git Bash install or a Bash Shell Command-line tool install in order to run the Bash script file.

### Running the Application

To run the application first make sure that port 8888 is not use in your operating system.
Then clone this repository and run the app with the following commands:

```
git clone https://github.com/patrickHub/fitness-shop.git
cd fitness-shop
bash buildAndRun.sh
```

And you can start make orders to localhost:8888/http://localhost:8888/fitness-shop-0.0.1-SNAPSHOT/

To simplefy every thing we have use:

- [Dockerfile](https://github.com/patrickHub/fitness-shop/blob/master/Dockerfile) which pull tomcat:9.0.19-jre8 from from tomcat docker official then copy the
  _fitness-shop-0.0.1-SNAPSHOT.war_ file to /usr/local/tomcat/webapps/fitness-shop-0.0.1-SNAPSHOT.war
- [docker-compose.yml](https://github.com/patrickHub/fitness-shop/blob/master/docker-compose.yml) which will create two services. One for build of the previous _Dockerfile_ and the other for mysql:5.7 image. As the _fitnes-shop.dev_ container should make database query to the database _fitness-shop-mysql.dev_ container, we have used the feature of Network. So the two containers are sharing the same network _fitness-shop-network_ and this is what will enable those containers to speach each other. Thanks to Docker for Network feature.
- [buildAndRun.sh](https://github.com/patrickHub/fitness-shop/blob/master/buildAndRun.sh) which will execute several commands. first it will clean and package our fitness-shop web application. And if maven clean and package succeed, he would remove the two docker containers and the image build from the Dockerfile in order to be able to reuse the container and the image names write in docker-compose.yml. Finaly it will run docker-compose up command to start everything. Then all you need to do after download this repository is to run this bash script file.

## Authors

- **[PatrickHub](https://github.com/patrickHub)**
