Feature: Registration

  Background:
    Given User opens website and navigates to Digital Bank
    And Clicks on Sing Up Here
    And User is on the registration page

  Scenario Outline: Successful registration Page 1
    When A user is selects a "<title>" on the title field
    And fills out the "<First Name>" on the First Name field
    And fills out the "<Last Name>" on the Last Name field
    And selects a "<gender>" on the gender field
    And fills out the fields for "<DOB>" on date of birth field
    And fills out the "<SSN>" on the SSN field
    And types a valid "<email address>" on the email address field
    And types a valid "<password>" on the password field
    And types to "<confirm password>" on the confirm password field
    And A user is able to click on Next
    Then Navigates to the registration Page 2

    Examples:
      | title | gender | First Name | Last Name | DOB        | SSN         | email address       | password       | confirm password |
      | Mr.   | M      | FirstName  | LastName  | 01/01/2001 | 123-45-6789 | username@gmail.com  | Password123!   | Password123!     |
      | Ms.   | F      | firstname  | lastname  | 02/03/2002 | 123-12-1234 | user_name@gmail.com | Us.password12  | Us.password12    |
      | Mrs.  | F      | fname      | lname     | 03/04/1990 | 123-12-2345 | user.name@yahoo.com | user?passworD1 | user?passworD1   |

  Scenario Outline: Successful Registration Page 2
    When a user selects "<title>" on the title field
    And a user fills out the "<First Name>" on the First Name field
    And a user fills out the "<Last Name>" on the Last Name field
    And a user selects a "<gender>" on the gender field
    And a user fills out a "<DOB>" on the date of birth field
    And a user fills out a "<SSN>" on the social security number field
    And a user types in a valid "<email address>" on the email address field
    And a user types in a valid "<password>" on the password field
    And a user types to "<confirm password>" on the confirm password field
    Then a user is able to click on Next button
    Then a user is navigated to the registration Page 2
    When a user is on the second page of registration
    And a user fills out an "<Address>" on the address field
    And a user fills out "<Locality>" on the locality field
    And a user fills out "<Region>" on the region field
    And a user fills out a "<Postal Code>" on the postal code field
    And a user fills out a "<Country>" on the country field
    And a user fills out a "<Home Phone>" on the home phone field
    And a user fills out a "<Mobile Phone>" on the mobile phone field
    And a user fills out a "<Work Phone>" on the work phone field
    And a user is able to click the check box Agree The Terms and Policy
    And a user is able to click on Register button
    Then a user is navigated to the login page
    And verify successful registration message is displayed

    Examples:
      | title | gender | First Name | Last Name | DOB        | SSN         | email address       | password       | confirm password | Address    | Locality  | Region | Postal Code | Country       | Home Phone   | Mobile Phone | Work Phone   |
      | Mr.   | M      | FirstName  | LastName  | 01/01/2001 | 123-45-6789 | username@gmail.com  | Password123!   | Password123!     | 123 Street | City Name | CA     | 90210       | US            | 1231231234   | 1231231234   | 1231231234   |
      | Ms.   | F      | firstname  | lastname  | 02/03/2002 | 123-12-1234 | user_name@gmail.com | Us.password12  | Us.password12    | Street 123 | Cityname  | IL     | 9K2A6J      | United States | 123-123-1234 | 123-123-1234 | 123-123-1234 |
      | Mrs.  | F      | fname      | lname     | 03/04/1990 | 123-12-2345 | user.name@yahoo.com | user?passworD1 | user?passworD1   | 123 street | cityname  | NY     | 9r2u4u      | China         | 5367439999   | 5367439999   | 5367439999   |

  Scenario Outline: unsuccessful registration on Page1 invalid title
    When user selects a <title>
    When user fills out the <first name> on first name field
    And user fills out the <last name> on second name field
    And user selects <gender> on gender radio button
    And user fills out <DOB> on DOB field
    And user fills out <SSN> on SSN field
    And user fills out <email address> on email address field
    And user fills out <password> on password field
    And user fills out <confirm password>  on confirm password field
    And user clicks on Next button
    Then  error message title is not selected is displayed
    Examples:
      | title         | gender | first name | last name | DOB        | SSN         | email address      | password   | confirm password |
      | Please select | F      | firstname  | lastname  | 01/27/2001 | 111-11-1111 | username@gmail.com | password1A | password1A       |

  Scenario Outline: unsuccessful registration on Page1 not selected gender
    When user selects a <title>
    When user fills out the <first name> on first name field
    And user fills out the <last name> on second name field
    And user fills out <DOB> on DOB field
    And user fills out <SSN> on SSN field
    And user fills out <email address> on email address field
    And user fills out <password> on password field
    And user fills out <confirm password>  on confirm password field
    And user clicks on Next button
    Then  error message please select one of this options is displayed
    Examples:
      | title | first name | last name | DOB        | SSN         | email address      | password   | confirm password |
      | Mr.   | firstname  | lastname  | 01/27/2001 | 111-11-1111 | username@gmail.com | password1A | password1A       |

  Scenario Outline: unsuccessful registration on Page1 invalid date of birth
    When user selects a <title>
    When user fills out the <first name> on first name field
    And user fills out the <last name> on second name field
    And user selects <gender> on gender radio button
    And user fills out <DOB> on DOB field
    And user fills out <SSN> on SSN field
    And user fills out <email address> on email address field
    And user fills out <password> on password field
    And user fills out <confirm password>  on confirm password field
    And user clicks on Next button
    Then  error message invalid date of birth is displayed
    Examples:
      | title | gender | first name | last name | DOB        | SSN         | email address      | password   | confirm password |
      | Mr.   | M      | firstname  | lastname  | 01-27/2001 | 111-11-1111 | username@gmail.com | password1A | password1A       |
      | Mr.   | M      | firstname  | lastname  | 01/27/1786 | 111-11-1111 | username@gmail.com | password1A | password1A       |
      | Mr.   | M      | firstname  | lastname  | 14/27/2001 | 111-11-1111 | username@gmail.com | password1A | password1A       |
      | Mr.   | M      | firstname  | lastname  | 01/33/2001 | 111-11-1111 | username@gmail.com | password1A | password1A       |
      | Mr.   | M      | firstname  | lastname  | 01/27/2020 | 111-11-1111 | username@gmail.com | password1A | password1A       |