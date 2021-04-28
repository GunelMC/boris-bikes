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
