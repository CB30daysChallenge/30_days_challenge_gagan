@AddItemsToDoList
Scenario Outline: Add items to do list
	Given I am on <website>
	And I add <Item> in the text box
	When I press enter
    Then I see <Item> added to the list
	And I see a radio button infront of each <item> in the list
	And I see number of items left
	And I see All Button is hightlighted
	And I see Active button
	And I see Completed button
	Examples:	
	| item    |
	| Iphone  |
	| Android |
	| Tablet  |
	| 456     |
	| 456abc  |

@ItemIsCompleted
Scenario Outline: Marking the item in the list as completed
	Given I am on <website>
	And I have <item> in my to do list
	When I select radio in front my <item>
    Then I see the <Item> is scrached
	And The radio button has a green check
	And I should see item left is displaying the number of active <Item>
	And I see All Button is hightlighted
	And I see Active button
	And I see Completed button
	And I see Clear completed button
	Examples:
	| Iphone  |
	| Android |
	| Tablet  |
	| 456     |
	| 456abc  |

@RemovingTheCompletedItem
Scenario Outline: Removing the completed item from the list
	Given I am on <website>
	And I have completed the  <item> in my to do list
	And I hover over the completed <item>
	And I see the  cross
	When I select the cross
    Then I see the completed scrached <Item> is deleted
	And I should see item left is displaying the number of active <Item>
	And I see All Button is hightlighted
	And I see Active button
	And I see Completed button
	And I see Clear completed button
	Examples:
	| Iphone  |
	| Android |
	| Tablet  |
	| 456     |
	| 456abc  |

@RemovingtheActiveItem
Scenario Outline: Removing the active item from the list
	Given I am on <website>
	And I have active  <item> in my to do list
	And I hover over the active <item>
	And I see the  cross
	When I select the cross
    Then I see the active <Item> is deleted
	And I should see item left is displaying the number of active <Item>
	And I see All Button is hightlighted
	And I see Active button
	And I see Completed button
	And I see Clear completed button
	Examples:
	| Iphone  |
	| Android |
	| Tablet  |
	| 456     |
	| 456abc  |


@CleartheCompletedButton
Scenario Outline: Clearing the completed items from the list
	Given I am on <website>
	And I have completed  <item> in my to do list
	When I select the Clear Completed button
    Then I see the completed <Item> is deleted
	And I should see item left is displaying the number of active <Item>
	And I see All Button is hightlighted
	And I see Active button
	And I see Completed button
	And I should not see Clear completed button
	Examples:
	| Iphone  |
	| Android |
	| Tablet  |
	| 456     |
	| 456abc  |

@ClickingtheCompletedButton
Scenario Outline: Viewing the list of completed items
	Given I am on <website>
	And I have completed  <item> in my to do list
	When I select the Completed button
    Then I see only completed <Item> 
	And The completed button is hightlighted
	And I should see item left is displaying the number of active <Item>
	And I see All Button is hightlighted
	And I see Active button
	And I see Clear completed button
	Examples:
	| Iphone  |
	| Android |
	| Tablet  |
	| 456     |
	| 456abc  |

@ClickingtheAllButton
Scenario Outline: Viewing the list of both active and completed items 
	Given I am on <website>
	And I have completed  <item> in my to do list
	And I have active <item> in my list
	When I select the All button
    Then I see All the <Item> 
	And I should see item left is displaying the number of active <Item>
	And I see All Button is hightlighted
	And I see Active button
	And I see the completed button
	And I see Clear completed button
	
	Examples:
	| Iphone  |
	| Android |
	| Tablet  |
	| 456     |
	| 456abc  |

@ClickingtheActiveButton
Scenario Outline: Viewing the list of active items in the list
	Given I am on <website>
	And I have completed  <item> in my to do list
	And I have incompleted <item> in my list
	When I select the Active button
    Then I see only active <Item> 
	And I should see item left is displaying the number of active <Item>
	And I see All Button 
	And I see Active button is highlighted
	And I see completed button
	And I  see Clear completed button
	
	Examples:
	| Iphone  |
	| Android |
	| Tablet  |
	| 456     |
	| 456abc  |


