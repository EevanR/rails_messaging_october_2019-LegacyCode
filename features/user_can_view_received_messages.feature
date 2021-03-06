Feature: User can view sent message
	As a User 
	In order to read my messages
	I want to see them in my inbox

	Background:
		Given the following user exist:
			| name   | email          | password | id |
			| dummy1 | user1@mail.com | password | 1  |
			| dummy2 | user2@mail.com | password | 2  |

		And the following messages exist:
			| subject       | message             | sender   | receiver |
			| To dear user2 | For ever yours      | dummy1   | dummy2   |
			| To dear user1 | Til the end of time | dummy2   | dummy1   |
		
		And I am logged in as "dummy1"

	Scenario: To view sent message
		When I am in the inbox
		Then I should see "Til the end of time"
		And I should see "Subject: To dear user1"
		And I should see "dummy2"