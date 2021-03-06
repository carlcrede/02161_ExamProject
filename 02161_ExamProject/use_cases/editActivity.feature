Feature: Activity editing for a project
	Description: A user edits activities in a project
	Actors: User

Scenario: Add a non existing activity to existing project
	Given I have the project with ID 180001
	And the project with ID 180001 exists
	And I have the activity "Programming"
	And the activity "Programming" does not exist in the project with ID 180001
	When I add the activity "Programming" to the project with ID 180001
	Then the activity "Programming" exists in the project with ID 180001

#Scenario: Add an activity with no name to existing project
#	Given I have the project with ID 180001
#	And the project with ID 180001 exists
#	And I have the activity " "
#	When I add the activity " " to the project with ID 180001
#	Then I get the error message "An activity must have a name"
#	
#Scenario: Add an already existing activity to existing project
#	Given I have the project with ID 180001
#	And the project with ID 180001 exists
#	And I have the activity "Programming"
#	And the activity "Programming" exists in the project with ID 180001
#	When I add the activity "Programming" to the project with ID 180001
#	Then I get the error message "That activity already exists"
#	
#Scenario: Remove an existing activity from a project
#	Given I have the project with ID 180001
#	And the project with ID 180001 exists
#	And I have the activity "Programming"
#	And the activity "Programming" exists in the project with ID 180001
#	When I remove the activity "Programming" from the project with ID 180001
#	Then the activity "Programming" does not exist in the project with ID 180001
#
#Scenario: Remove an non existing activity from a project
#	Given I have the project with ID 180001
#	And the project with ID 180001 exists
#	And I have the activity "Programming"
#	And the activity "Programming" does not exist in the project with ID 180001
#	When I remove the activity "Programming" from the project with ID 180001
#	Then I get the error message "That activity does not exist"
#
#Scenario: Edit non-existing project
#	Given I have the project with ID 180001
#	And the project with ID 180001 does not exist
#	When I select the project with ID 180001
#	Then I get the error message "A project with that ID does not exist"
#
#Scenario: Rename activity to non existing name
#	Given I have the project with ID 180001
#	And the project with ID 180001 exists
#	And I have the activity "Programming"
#	And the activity "Programming" exists in the project with ID 180001
#	And I have the activity "Coffee break"
#	And the activity "Coffee break" does not exist in the project with ID 180001
#	When I rename the activity "Programming" in the project with ID 180001 to "Coffee break"
#	Then the activity "Coffee break" exists in the project with ID 180001
#	And the activity "Programming" does not exist in the project with ID 180001
#
#Scenario: Rename activity to existing name
#	Given I have the project with ID 180001
#	And the project with ID 180001 exists
#	And I have the activity "Programming"
#	And the activity "Programming" exists in the project with ID 180001
#	And I have the activity "Coffee break"
#	And the activity "Coffee break" exists in the project with ID 180001
#	When I rename activity "Programming" in the project with ID 180001 to "Coffee break"
#	Then I get the error message "That activity name already exists"
