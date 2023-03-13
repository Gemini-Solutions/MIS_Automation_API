#Author: shubham.kumar@geminisolutions.com
#Keyword: Leave Management


Feature: MIS - Leave Management API

  Background: MIS - Login API
    Given Set endpoint "loginAPI" and method "post" for MIS login
    And Verify status code 200 for leave Management

  Scenario Outline: Get Leave Balance Data
    When Set the Leave Management endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify status code <expectedStatus> for leave Management

    Examples:
      | endpoint             | method | expectedStatus | payloadName            |
      | postLeaveBalanceData | post   | 200            | leaveManagementPayload |

  Scenario Outline: Get Last Records Leave Details
    When Set the Leave Management endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify status code <expectedStatus> for leave Management

    Examples:
      | endpoint                    | method | expectedStatus | payloadName         |
      | postLastLeaveRecordsDetails | post   | 200            | leaveRecordsPayload |

  Scenario Outline: Get Outing Types
    When Set the Leave Management endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify status code <expectedStatus> for leave Management

    Examples:
      | endpoint        | method | expectedStatus | payloadName        |
      | postOutingTypes | post   | 200            | leaveOutingPayload |

  Scenario Outline: Fetch Data for Employee Directory
    When Set the Leave Management endpoint "<endpoint>" and method "<method>"
    Then Verify status code <expectedStatus> for leave Management

    Examples:
      | endpoint                      | method | expectedStatus |
      | FetchDataForEmployeeDirectory | get    | 200            |

  Scenario Outline: Fetch Dates to Request Work From Home
    When Set the Leave Management endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify status code <expectedStatus> for leave Management

    Examples:
      | endpoint        | method | expectedStatus | payloadName            |
      | postDatesForWFH | post   | 200            | leaveManagementPayload |

  Scenario Outline: Get Last Records WFH Details
    When Set the Leave Management endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify status code <expectedStatus> for leave Management

    Examples:
      | endpoint                  | method | expectedStatus | payloadName       |
      | postLastWFHRecordsDetails | post   | 200            | wfhRecordsPayload |

  Scenario Outline: Fetch Dates to Request Comp Off
    When Set the Leave Management endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify status code <expectedStatus> for leave Management

    Examples:
      | endpoint            | method | expectedStatus | payloadName            |
      | postDatesForCompOff | post   | 200            | leaveManagementPayload |

  Scenario Outline: Get List of LWP Marked By System By UserId
    When Set endpoint "<endpoint>" and method "<method>" for leave Management
    Then Verify status code <expectedStatus> for leave Management

    Examples:
      | endpoint              | method | expectedStatus |
      | postLWPMarkedBySystem | post   | 200            |

  Scenario Outline: Get Financial Year for UserId
    When Set endpoint "<endpoint>" and method "<method>" for leave Management
    Then Verify status code <expectedStatus> for leave Management

    Examples:
      | endpoint              | method | expectedStatus |
      | postListFinancialYear | post   | 200            |

  Scenario Outline: Get List Of Leaves By UserId
    When Set the Leave Management endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify status code <expectedStatus> for leave Management

    Examples:
      | endpoint              | method | expectedStatus | payloadName      |
      | postListLeaveByUserId | post   | 200            | listLeavePayload |

  Scenario Outline: Get List Of Work From Home By UserId
    When Set the Leave Management endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify status code <expectedStatus> for leave Management

    Examples:
      | endpoint            | method | expectedStatus | payloadName      |
      | postListWFHByUserId | post   | 200            | listLeavePayload |

  Scenario Outline: Get List Of Comp Off By UserId
    When Set the Leave Management endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify status code <expectedStatus> for leave Management

    Examples:
      | endpoint                | method | expectedStatus | payloadName      |
      | postListCompOffByUserId | post   | 200            | listLeavePayload |

  Scenario Outline: Get List Of Apply Outing By UserId
    When Set the Leave Management endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify status code <expectedStatus> for leave Management

    Examples:
      | endpoint               | method | expectedStatus | payloadName      |
      | postListOutingByUserId | post   | 200            | listLeavePayload |

  Scenario Outline: Get List Of Legitimatet By UserId
    When Set the Leave Management endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify status code <expectedStatus> for leave Management

    Examples:
      | endpoint                    | method | expectedStatus | payloadName      |
      | postListLegitimatetByUserId | post   | 200            | listLeavePayload |

  Scenario Outline: Get List Of Data Change Request By UserId
    When Set the Leave Management endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify status code <expectedStatus> for leave Management

    Examples:
      | endpoint                      | method | expectedStatus | payloadName      |
      | postListChangeRequestByUserId | post   | 200            | listLeavePayload |