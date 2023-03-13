#Author: charu.garg@geminisolutions.com
#Keyword: Reimbursement

Feature: Reimbursement Api

  Background: API VALIDATION: Login
    Given Set endpoint "postApi" and method "post"
    Then Verify Policy status code 200


  Scenario Outline: API VALIDATION: GetReimbursementListToView
    Given Set the Reimbursement endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify Reimbursement status code <expectedStatus>
    Examples:
      | endpoint                   | method | expectedStatus | payloadName                |
      | GetReimbursementListToView | post   | 200            | getReimbursementListToView |

  Scenario Outline: API VALIDATION: GetReimbursementType
    Given Set the Reimbursement endpoint "<endpoint>" and method "<method>"
    Then Verify Reimbursement status code <expectedStatus>
    Examples:
      | endpoint             | method | expectedStatus |
      | GetReimbursementType | post   | 200            |

  Scenario Outline: API VALIDATION: GetReimbursementMonthYearToViewAndApprove
    Given Set the Reimbursement endpoint "<endpoint>" and method "<method>"
    Then Verify Reimbursement status code <expectedStatus>
    Examples:
      | endpoint                                  | method | expectedStatus |
      | GetReimbursementMonthYearToViewAndApprove | post   | 200            |

