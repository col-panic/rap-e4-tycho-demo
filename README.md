# Building the Eclipse RAP e4 demo project built with Maven Tycho

This is a demonstration / help project that builds the Eclipse `RAP e4 Template` aka Eclipse e4 demo project using Maven Tycho.
It uses the Eclipse RAP e4 [RAP Target Components](https://www.eclipse.org/rap/downloads/) in version RAP 3.11 December 2019 (2019-12).

## Usage

Building is only tested with Java 8. It is recommended to build and run on a OS X oder Linux system with Docker tooling installed.

- `cd at.col.panic.e4raptycho.releng`
- `mvn clean verify` this will output the war product into `at.colpanic.e4raptycho.product.feature/target`
- To run, deploy to a servlet container. In the `at.colpanic.e4raptycho.product` directory the `test.sh` file does this using a current Jetty docker image. Browse to http://localhost:8080/e4raptycho-rap/e4 after startup.