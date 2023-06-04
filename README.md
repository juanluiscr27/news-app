# news-app
A News Mobile App built with Flutter and implementing Clean Architecture.

Taken from [Flutter Guys](https://www.youtube.com/watch?v=zon3WgmcqQw&list=PLjyxas0TsCpnjpzCv3rnsX3LjS9G2K05f&pp=iAQB) Youtube channel

## Clean Architecture
The Clean Architecture is software design pattern which promotes the separation of concerns 
and the creation of highly maintainable, scalable, testable and flexible software systems. 
This can be done by organizing the codebase into independent layers that communicate through 
defined interfaces. 

Clean Architecture aims at creating loosely coupled application components  in such a way that 
it encapsulates the business logic but keeps it separate from the delivery mechanism. The main 
rule of clean architecture is that code dependencies can only move from the outer levels inward.

![Clean Architecture](https://blog.cleancoder.com/uncle-bob/images/2012-08-13-the-clean-architecture/CleanArchitecture.jpg "Clean Architecture Diagram")
*Clean Architecture by Robin C. Martin*

## Project Structure

### Domain
Manage business logic, entity objects and use cases:
* Entities
* Repository
* Services

## Data 
Handle infrastructure, data persistence and interface implementation:
* Models
* Repository
* Data Sources

## Presentation
Define the graphical user interface, views, pages, screens and widgets, as well as state providers 
or controllers:
* Provider
* Screens
* Widgets


## Flutter Clean Architecture
Reso Coder's Flutter Clean Architecture Proposal. It shows the dependency flow (data and call flow).
Every "feature" of the app will be divided into 3 layers; presentation, domain, and data.
![Clean Architecture](https://i0.wp.com/resocoder.com/wp-content/uploads/2019/08/Clean-Architecture-Flutter-Diagram.png?w=556&ssl=1 "Flutter Clean Architecture Diagram")
*Flutter Clean Architecture by Matt Rešetár*

### Presentation
It composed of widgets to display something on the screen. The widgets then dispatch events
to the presentation logic holders (state management) and listen for states changes. 

The presentation layer handles basic input conversion and validation and delegates all its work to the use cases.

### Domain
Domain is most the inner layer which should be totally independent of every other layer. It 
shouldn't be susceptible to any change. It will contain only the core business logic (Use Cases) and 
business objects (Entities). 

The Domain layer also defining the contracts that the Data Repository mus fulfill. To guarantee the
dependency rule and maintain the domain layer completely independent when it gets data from a Repository
we should follow the Dependency inversion principle. Dependency inversion states that the boundaries 
between layers should be handled with interfaces (abstract classes).

### Data
The data layer consists of a Repository implementation (the contract comes from the domain layer) 
and data sources. Data sources can be Remote, usually for getting data from API; or Local, for caching data.

Additionally, Data sources don't return Entities but rather Models. Model classes which extend 
Entities and add some specific functionality or additional fields.

