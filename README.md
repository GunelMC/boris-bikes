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

#### Challenge 6: Passing your first Unit Test

Created a new file inside lib directory for DockingStation class, and defined the class. Used 'require <file>' to link the file to the spec file.

#### Challenge 7: Back to the feature

Run the following feature_test from Irb:

3.0.0 :003 > docking_station.release_bike

Error: NoMethodError (undefined method `release_bike' for #<DockingStation:0x00007fb9fca8f490>)

**'what is the error telling me to do next?'**

To define 'release_bike' method inside my newly created DockingStation class so we can use it with its instances

#### Challenge 8: Back to the unit

Now we repeat the cycle again:

1. We run feature test from the command line
2. We write a unit test for the unit of behavior, in this case, release_bike method, in our spec file (Note: this is a failing test, and it will fail in the same way as our feature test).
3. Then we make our unit test pass by adding the simplest code possible - in this case, by defining our release_bike method inside the DockingStation class.
