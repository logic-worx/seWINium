Feature: Testing Window Closing Functions Functions

Scenario: Verify [Close Window] is working.
	Given I go to "http://127.0.0.1:8777/window/close?key=unit-test-12345&title=Untitled%20-%20Notepad"
	Then the property "status" in the JSON matches "OK"
	And the property "message" in the JSON matches "Window Closed"

Scenario: Verify [Wait for window to Close] is working.
	Given I go to "http://127.0.0.1:8777/window/waitclose?key=unit-test-12345&title=Untitled%20-%20Notepad&timeout=2"
	Then the property "status" in the JSON matches "OK"
	And the property "message" in the JSON matches "Window closed/does not exist."

Scenario: Verify [Kill Window] is working. **Will Fail**
	Given I go to "http://127.0.0.1:8777/window/close?key=unit-test-12345&regexptitle=.*\\seWINium\.exe"
	Then the property "status" in the JSON matches "OK"
	And the property "message" in the JSON matches "Window killed (Forced)"