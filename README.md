# Boris Bikes

#### Challenge 2 : From User Stories to Domain Model

User story 1 & 2

| User Story   | As a User    | I want to                                     | So that I can                  |
| ------------ | ------------ | --------------------------------------------- | ------------------------------ |
| User Story 1 | As a person, | I'd like a docking station to release a bike. | So that I can use a bike,      |
| User Story 2 | As a person, | I'd like to see if a bike is working.         | So that I can use a good bike, |

| Objects         |     Messages |
| :-------------- | -----------: |
| person          |              |
| docking station | release bike |
| bike            |     working? |

#### Visual Representation of how objects communicate

docking_station --> release_bike --> bike --> person
person --> working? ---> use_bike

#### Challenge 3: From a Domain Model to a Feature Test

From irb run:

3.0.0 :001 > docking_station = DockingStation.new created this error:

Result: NameError (uninitialized constant DockingStation)

#### Challenge 4: Errors are good

**Type of Error:** NameError
**File path:** /Users/username/.rvm/rubies/ruby-3.0.0/bin/irb:11:in '<main>'
**Line Number:** 1
**What does it mean?** It means that the name is undefined, we have not defined our class yet
**How to solve it?** Define the class DockingStation in the application file

#### Challenge 5: From Feature Tests to Unit Tests

Task: write a failing unit test which would give you a similar error message to the feature test we ran from irb previously.

To complete this step, we perform the following:

- Initialise RSpec within your project
- Create a new spec file for your DockingStation object
- Set up the spec file to describe a DockingStation
- Run RSpec from the Command Line
