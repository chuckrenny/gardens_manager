# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

Iteration 1
CRUD
[] done

User Story 1, Garden Index 

For each Garden table
As a visitor
When I visit '/gardens'
Then I see the name of each Garden record in the system
[x] done

User Story 2, Garden Show 

As a visitor
When I visit '/Gardens/:id'
Then I see the Garden with that id including the Garden's attributes
(data from each column that is on the Garden table)
[x] done

User Story 3, Plant Index 

As a visitor
When I visit '/plants'
Then I see each Plant in the system including the Plant's attributes
(data from each column that is on the plant table)
[x] done

User Story 4, Plant Show 

As a visitor
When I visit '/plants/:id'
Then I see the plant with that id including the plant's attributes
(data from each column that is on the plant table)
[x] done

User Story 5, Garden Plant Index 

As a visitor
When I visit '/Gardens/:Garden_id/plants'
Then I see each Plant that is associated with that Garden with each Plant's attributes
(data from each column that is on the plant table)

ActiveRecord
[ ] done

User Story 6, Garden Index sorted by Most Recently Created 

As a visitor
When I visit the Garden index,
I see that records are ordered by most recently created first
And next to each of the records I see when it was created
[ ] done

User Story 7, Garden Plant Count

As a visitor
When I visit a Garden's show page
I see a count of the number of plantren associated with this Garden

Usability
[ ] done

User Story 8, Plant Index Link

As a visitor
When I visit any page on the site
Then I see a link at the top of the page that takes me to the Plant Index
[ ] done

User Story 9, Garden Index Link

As a visitor
When I visit any page on the site
Then I see a link at the top of the page that takes me to the Garden Index
[ ] done

User Story 10, Garden Plant Index Link

As a visitor
When I visit a Garden show page ('/Gardens/:id')
Then I see a link to take me to that Garden's `plant_table_name` page ('/Gardens/:id/plant_table_name')

Iteration 2
CRUD
[ ] done

User Story 11, Garden Creation 

As a visitor
When I visit the Garden Index page
Then I see a link to create a new Garden record, "New Garden"
When I click this link
Then I am taken to '/Gardens/new' where I  see a form for a new Garden record
When I fill out the form with a new Garden's attributes:
And I click the button "Create Garden" to submit the form
Then a `POST` request is sent to the '/Gardens' route,
a new Garden record is created,
and I am redirected to the Garden Index page where I see the new Garden displayed.
[ ] done

User Story 12, Garden Update 

As a visitor
When I visit a Garden show page
Then I see a link to update the Garden "Update Garden"
When I click the link "Update Garden"
Then I am taken to '/Gardens/:id/edit' where I  see a form to edit the Garden's attributes:
When I fill out the form with updated information
And I click the button to submit the form
Then a `PATCH` request is sent to '/Gardens/:id',
the Garden's info is updated,
and I am redirected to the Garden's Show page where I see the Garden's updated info
[ ] done

User Story 13, Garden Plant Creation 

As a visitor
When I visit a Garden Plantren Index page
Then I see a link to add a new adoptable plant for that Garden "Create Plant"
When I click the link
I am taken to '/Gardens/:Garden_id/plant_table_name/new' where I see a form to add a new adoptable plant
When I fill in the form with the plant's attributes:
And I click the button "Create Plant"
Then a `POST` request is sent to '/Gardens/:Garden_id/plant_table_name',
a new plant object/row is created for that Garden,
and I am redirected to the Garden Plants Index page where I can see the new plant listed
[ ] done

User Story 14, Plant Update 

As a visitor
When I visit a Plant Show page
Then I see a link to update that Plant "Update Plant"
When I click the link
I am taken to '/plant_table_name/:id/edit' where I see a form to edit the plant's attributes:
When I click the button to submit the form "Update Plant"
Then a `PATCH` request is sent to '/plant_table_name/:id',
the plant's data is updated,
and I am redirected to the Plant Show page where I see the Plant's updated information

ActiveRecord
[ ] done

User Story 15, Plant Index only shows `true` Records 

As a visitor
When I visit the plant index
Then I only see records where the boolean column is `true`
[ ] done

User Story 16, Sort Garden's Plantren in Alphabetical Order by name 

As a visitor
When I visit the Garden's plantren Index Page
Then I see a link to sort plantren in alphabetical order
When I click on the link
I'm taken back to the Garden's plantren Index Page where I see all of the Garden's plantren in alphabetical order

Usability
[ ] done

User Story 17, Garden Update From Garden Index Page 

As a visitor
When I visit the Garden index page
Next to every Garden, I see a link to edit that Garden's info
When I click the link
I should be taken to that Garden's edit page where I can update its information just like in User Story 12
[ ] done

User Story 18, Plant Update From Plants Index Page 

As a visitor
When I visit the `plant_table_name` index page or a Garden `plant_table_name` index page
Next to every plant, I see a link to edit that plant's info
When I click the link
I should be taken to that `plant_table_name` edit page where I can update its information just like in User Story 14

Iteration 3
CRUD
[ ] done

User Story 19, Garden Delete 

As a visitor
When I visit a Garden show page
Then I see a link to delete the Garden
When I click the link "Delete Garden"
Then a 'DELETE' request is sent to '/Gardens/:id',
the Garden is deleted, and all plant records are deleted
and I am redirected to the Garden index page where I no longer see this Garden
[ ] done

User Story 20, Plant Delete 

As a visitor
When I visit a plant show page
Then I see a link to delete the plant "Delete Plant"
When I click the link
Then a 'DELETE' request is sent to '/plant_table_name/:id',
the plant is deleted,
and I am redirected to the plant index page where I no longer see this plant
ActiveRecord
[ ] done

User Story 21, Display Records Over a Given Threshold 

As a visitor
When I visit the Garden's plantren Index Page
I see a form that allows me to input a number value
When I input a number value and click the submit button that reads 'Only return records with more than `number` of `column_name`'
Then I am brought back to the current index page with only the records that meet that threshold shown.
Usability
[ ] done

User Story 22, Garden Delete From Garden Index Page 

As a visitor
When I visit the Garden index page
Next to every Garden, I see a link to delete that Garden
When I click the link
I am returned to the Garden Index Page where I no longer see that Garden
[ ] done

User Story 23, Plant Delete From Plants Index Page 

As a visitor
When I visit the `plant_table_name` index page or a Garden `plant_table_name` index page
Next to every plant, I see a link to delete that plant
When I click the link
I should be taken to the `plant_table_name` index page where I no longer see that plant