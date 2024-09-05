# Redaction Service   
This is a simple Ruby on Rails application that provides a web service for redacting certain words from arbitrary text. The application has two main endpoints:

#### GET /redact:   
- Returns the string "Redaction Service".   

#### POST /redact: 
- Accepts a text body and returns the same text with specific words replaced by "REDACTED".

##  Features
- **Redact words:** Automatically replaces any occurrences of the words Dog, Cat, Snake, Dolphin, and Mammal (case-insensitive) with "REDACTED".
- **Configurable Port:** The server can be started on a custom port.
- **POST request logging:** All POST requests are logged with a timestamp and the original text before redaction.

## Setup
### Prerequisites
- Ruby (3.0.0)
- Rails (7.1.4)
- Bundler

## Installation
- **Clone this repository:**  `git clone https://github.com/shimroz1992/hha_assestment.git`   
- **Install the required gems:** `bundle install`   
- **Running the Application:** `rails s`    
To run the application on a custom port, such as 8080, run:

`rails server -p 8080` 

The application will be available at http://localhost:8080/redact.    

## Testing the Endpoints      
### Example POST Request     
#### Request:
`POST /redact
Body: "A dog, a monkey or a dolphin are all mammals. A snake, however, is not a mammal."`


Response:

`"A REDACTED, a monkey or a REDACTED are all mammals. A REDACTED, however, is not a REDACTED."
`    
#
_For any questions or suggestions, feel free to reach out to us at_ **[shimrozahemed.ngp@gmail.com ]**

**Happy Coding! 🚀**



