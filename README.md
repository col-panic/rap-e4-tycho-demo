# Building the Eclipse RAP e4 demo project with Maven Tycho

This is a demonstration / help project that builds the Eclipse `RAP e4 Template` aka Eclipse e4 demo project using Maven Tycho.
It uses the Eclipse RAP e4 [RAP Target Components](https://www.eclipse.org/rap/downloads/) in version RAP 3.16 December 2019 (2021-03).

## Usage

Building is only tested with Java 11. It is recommended to build and run on a OS X oder Linux system with Docker tooling installed.

- `cd at.colpanic.e4raptycho.releng`
- `mvn clean verify` this will output the war product into `at.colpanic.e4raptycho.product.feature/target`
- To run, deploy to a servlet container. In the `at.colpanic.e4raptycho.product` directory the `test.sh` file does this using a current Jetty docker image. Browse to http://localhost:8080/e4raptycho-rap/e4 after startup. You should see the following website

![Bildschirmfoto 2021-03-30 um 10 23 31](https://user-images.githubusercontent.com/1679857/112958263-93e41700-9142-11eb-9320-a98f419c39ef.png)


## Thanks

* Thanks to @jbmeyer for porting from Java 8 to Java 11, and updating to RAP 3.16
