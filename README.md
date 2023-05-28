# news-app
A News Mobile App built with Flutter and implementing Clean Architecture.

## Clean Architecture
The Clean Architecture is software design pattern which promotes the separation of concerns 
and the creation of highly maintainable, scalable, testable and flexible software systems. 
This can be done by organizing the codebase into independent layers that communicate through 
defined interfaces. 

Clean Architecture aims at creating loosely coupled application components  in such a way that 
it encapsulates the business logic but keeps it separate from the delivery mechanism. The main 
rule of clean architecture is that code dependencies can only move from the outer levels inward.

![Clean Architecture](https://blog.cleancoder.com/uncle-bob/images/2012-08-13-the-clean-architecture/CleanArchitecture.jpg "Clean Architecture Diagram")

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

