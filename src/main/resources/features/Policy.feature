#Author: charu.garg@geminisolutions.com
#Keyword: Policy
Feature: MIS Portal API Login Authentication

  Background: API VALIDATION: Login
    Given Set endpoint "postApi" and method "post"
    Then Verify Policy status code 200

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
      | endpoint             | method | expectedStatus | payloadName          |
      | GetAllActivePolicies | post   | 200            | getAllActivePolicies |

  Scenario Outline: API VALIDATION: FetchPolicyInformation
    Given Set the Policy endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify Policy status code <expectedStatus>
    Examples:
      | endpoint               | method | expectedStatus | payloadName            |
      | FetchPolicyInformation | post   | 200            | fetchPolicyInformation |

  Scenario Outline: API VALIDATION: GetAllActivePolicies Negative Scenario
    Given Set the Policy endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify Policy status code <expectedStatus>
    Examples:
      | endpoint             | method | expectedStatus | payloadName             |
      | GetAllActivePolicies | post   | 400            | getAllActivePoliciesNeg |

  Scenario Outline: API VALIDATION: FetchPolicyInformation Negative Scenario
    Given Set the Policy endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify Policy status code <expectedStatus>
    Examples:
      | endpoint               | method | expectedStatus | payloadName               |
      | FetchPolicyInformation | post   | 400            | fetchPolicyInformationNeg |

  Scenario Outline:API VALIDATION: GetAllActivePolicies Invalid Header
    When Set the Policy endpoint "<endpoint>" , method "<method>" and "<payloadName>" for invalid
    Then Verify Policy status code <expectedStatus>
    Examples:
      | endpoint             | method | expectedStatus | payloadName          |
      | GetAllActivePolicies | post   | 401            | getAllActivePolicies |

  Scenario Outline:API VALIDATION: FetchPolicyInformation Invalid Header
    When Set the Policy endpoint "<endpoint>" , method "<method>" and "<payloadName>" for invalid
    Then Verify Policy status code <expectedStatus>
    Examples:
      | endpoint               | method | expectedStatus | payloadName            |
      | FetchPolicyInformation | post   | 401            | fetchPolicyInformation |

  Scenario Outline: API VALIDATION: GetAllActivePolicies Wrong Method
    Given Set the Policy endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify Policy status code <expectedStatus>
    Examples:
      | endpoint             | method | expectedStatus | payloadName          |
      | GetAllActivePolicies | get   | 405            | getAllActivePolicies |

  Scenario Outline: API VALIDATION: FetchPolicyInformation Wrong Method
    Given Set the Policy endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify Policy status code <expectedStatus>
    Examples:
      | endpoint               | method | expectedStatus | payloadName            |
      | FetchPolicyInformation | get   | 405           | fetchPolicyInformation |

