#Author: charu.garg@geminisolutions.com
#Keyword: Policy

Feature: MIS Portal API Login Authentication

  Scenario Outline: API VALIDATION: Login
    Given Set endpoint "<endpoint>" and method "<method>"
    Then Verify Policy status code <expectedStatus>
    Examples:
      | endpoint | method | expectedStatus |
      | postApi  | post   | 200            |

  Scenario Outline: API VALIDATION: FetchDataForEmployeeDirectory
    Given Set the Policy endpoint "<endpoint>" and method "<method>"
    Then Verify Policy status code <expectedStatus>
    Examples:
      | endpoint                      | method | expectedStatus |
      | FetchDataForEmployeeDirectory | get    | 200            |

  Scenario Outline: API VALIDATION: GetAllActivePolicies
    Given Set the Policy endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify Policy status code <expectedStatus>
    Examples:
      | endpoint             | method | expectedStatus | payloadName           |
      | GetAllActivePolicies | post   | 200            | getAllActivePolicies |

  Scenario Outline: API VALIDATION: GetAllActivePolicies
    Given Set the Policy endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify Policy status code <expectedStatus>
    Examples:
      | endpoint               | method | expectedStatus | payloadName             |
      | FetchPolicyInformation | post   | 200            | fetchPolicyInformation |

