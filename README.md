# proto1
Open cult app specifications

	When the user opens the app, the following will be shown:
The name of the company.
Owners of the company
Phone numbers, emails, and text options if a person wants to be a member. 
A hyperlink to the company website.
Button at the top to add new members.
When the user presses the Cult Members button, a tableview will be displayed showing their current members.  Pressing the add member button will display an alert for a new member to enter the following:
The name of the member
The member’s phone number
The member’s email address
Reason for membership
in the event a member needs to be removed, the user will be able to delete the member by swiping to the left and pressing delete. For the user to save the members locally, I will install the realm database.  This is so that when the user closes the app, the member information is not lost.  in addition, the firebase database will also be installed for the purpose of storing member information on the internet, and to access it in the future.  Firebase is run through google, and is easy to use.  Both of these databases will be installed using the cocoa pods method.
