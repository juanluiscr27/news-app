# News App
A News Mobile App built with Flutter and implementing Clean Architecture.

[1]: Taken from [Flutter Guys](https://www.youtube.com/watch?v=zon3WgmcqQw&list=PLjyxas0TsCpnjpzCv3rnsX3LjS9G2K05f&pp=iAQB) Youtube channel

## Clean Architecture
The Clean Architecture is software design pattern which promotes the separation of concerns 
and the creation of highly maintainable, scalable, testable and flexible software systems. 
This can be done by organizing the codebase into independent layers that communicate through 
defined interfaces. 

Clean Architecture aims at creating loosely coupled application components  in such a way that 
it encapsulates the business logic but keeps it separate from the delivery mechanism. The main 
rule of clean architecture is that code dependencies can only move from the outer levels inward.

![Clean Architecture](https://blog.cleancoder.com/uncle-bob/images/2012-08-13-the-clean-architecture/CleanArchitecture.jpg "Clean Architecture diagram")
*Clean Architecture by Robin C. Martin*

## Project Structure

### Domain
Manage business logic, entity objects and use cases:
* Entities
* Repository
* Services

### Data 
Handle infrastructure, data persistence and interface implementation:
* Models
* Repository
* Data Sources

### Presentation
Define the graphical user interface, views, pages, screens and widgets, as well as state providers 
or controllers:
* Provider
* Screens
* Widgets


## Flutter Clean Architecture
Reso Coder's Flutter Clean Architecture Proposal. It shows the dependency flow (data and call flow).
Every "feature" of the app will be divided into 3 layers; Presentation, Domain, and Data.

![Clean Architecture](https://i0.wp.com/resocoder.com/wp-content/uploads/2019/08/Clean-Architecture-Flutter-Diagram.png?w=556&ssl=1 "Flutter Clean Architecture diagram")
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

## CleanScope Architecture

![CleanScope, by NoScopeDevs](https://cdn.hashnode.com/res/hashnode/image/upload/v1644200609927/LlNClxAsh.png?auto=compress,format&format=webp "CleanScope Architecture diagram")
*CleanScope by NoScopeDevs*

By implementing Clean architecture all the layers in our application are independent on from the other, 
but the only layer that has complete autonomy is the domain. This is because the domain defines both 
the types of data that we are going to use all around our app (entities) and the actions that are 
going to be carried out in our project (repositories and use cases).

The most common quality attributes use evaluate the performance of a software system are
Scalability, Maintainability, Testability.

Scalability, which in short terms is defined as the ability of a system to grow in workload without 
dying while trying. Also, when a project grows, it must be reliable, meaning that to ensure reliability, 
you have to maintain code with its tests passed to ensure it works. Finally, is called decoupling, 
which is closely related to code reuse and independence of each piece of software.

The Clean is an architecture suggested by Robert C. Martin claims to meet all of the characteristics
mentioned previously when is followed with **The Dependency Rule**

> Dependencies go from the outside in. That said, dependencies don't know anything about the components 
> that depend on them.

In the Clean Architecture diagram, as the circle that contains everything has the UI the rule says the 
UI depends on the Controllers but a Controller doesn't know what's in the UI. Controller depends on 
the Use Cases but a Use Case doesn't know what's in the Controller. Use Case depends on
the Entities but a Entity doesn't know what's in the Use Case. So with the other circles from the 
other side and those that contain them; Data sources, Gateways, Entities. What it is, the small 
circle is used in the large circle and NOT vice versa.

Domain: Define the entities, extracts the contracts in the system (interfaces, or abstract classes).

Data: implements the contracts and obtains the data that the system uses.

Presentation: Define the Graphical User Interface and Manage the application state.

## Bloc Architecture

![Bloc Architecture](https://bloclibrary.dev/assets/bloc_architecture_full.png "Bloc Architecture diagram")
*Bloc Architecture, Bloc library*

The bloc library architecture allows us to separate our application into three layers:

* Presentation
* Business Logic
* Data:
    * Repository
    * Data Provider

### Data Layer
This layer is the lowest level of the application. Its responsibility is to retrieve/manipulate data
from one or more sources, so it interacts with databases, network requests, and other asynchronous data sources.

The data layer can be split into two parts:
* Repository
* Data Provider

The **data provider** will usually expose simple APIs to perform CRUD operations. We might have a
createData, readData, updateData, and deleteData method as part of our data layer. The data provider's
responsibility is to provide raw data.

The **repository** layer is a wrapper around one or more data providers with which the Bloc Layer
communicates. It interact with multiple data providers and perform transformations on the data before
handing the result to the business logic Layer.

### Business Logic Layer
The business logic layer's responsibility is to respond to input from the presentation layer with new 
states. This layer can depend on one or more repositories to retrieve data needed to build up the 
application state. Think of the business logic layer as the bridge between the user interface 
(presentation layer) and the data layer.

### Presentation Layer
The presentation layer's responsibility is render itself based on one or more bloc states. In addition, 
it should handle user input and application lifecycle events.
