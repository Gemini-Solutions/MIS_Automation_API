Feature: MIS Portal API Login Authentication

  Scenario Outline: Authenticate User Login API
    Given Set Authenticate endpoint and method "<endpoint>" and "<Method>"
    Then Verify Timesheet Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | postApi  | post   | 200             |

  Scenario Outline: UnSuccessful Login User
    Given Set Unsuccessful Authenticate endpoint and method "<endpoint>" and "<Method>" invalid Header
    Then Verify Timesheet Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | postApi  | post   | 500             |

  Scenario Outline: Fetch Project assigned to user API
    Given Set Fetch project endpoint and method and payload "<endpoint>" and "<method>" and "<payloadName>"
    Then Verify Timesheet Status code <Expected_status>
    Examples:
      | endpoint         | method | Expected_status | payloadName |
      | postFetchProject | post   | 200             | commonLogin |


  Scenario Outline: Get User Detail using UserID API
    Given Set User Detail endpoint and method and payload "<endpoint>" and "<method>" and "<payloadName>"
    Then Verify Timesheet Status code <Expected_status>
    Examples:
      | endpoint        | method | Expected_status | payloadName |
      | postUserDetails | post   | 200             | commonLogin |

  Scenario Outline: Eligible User API Validation
    Given Set Eligible User endpoint and method "<endpoint>" and "<method>"
    Then Verify Timesheet Status code <Expected_status>
    Examples:
      | endpoint         | method | Expected_status |
      | postEligibleUser | post   | 200             |

  Scenario Outline: Fetch data from Employee Directory API Validation
    Given Set Employee Directory endpoint and method "<endpoint>" and "<method>"
    Then Verify Timesheet Status code <Expected_status>
    Examples:
      | endpoint    | method | Expected_status |
      | getFetchEmp | get    | 200             |


  Scenario Outline: Fetch Week Info API for Create Timesheet
    Given Set Week Info endpoint and method and payload "<endpoint>" and "<method>" and "<payloadName>"
    Then Verify Timesheet Status code <Expected_status>
    Examples:
      | endpoint      | method | Expected_status | payloadName |
      | postFetchWeek | post   | 200             | weekInfo    |

  Scenario Outline: Fetch Timesheet Info API for Create Timesheet
    Given Set Timesheet Info endpoint and method and payload "<endpoint>" and "<method>" and "<payloadName>"
    Then Verify Timesheet Status code <Expected_status>
    Examples:
      | endpoint           | method | Expected_status | payloadName   |
      | postFetchTimesheet | post   | 200             | timesheetInfo |

  Scenario Outline: Fetch Project for Timesheet API for Create Timesheet
    Given Set Project for Timesheet endpoint and method and payload "<endpoint>" and "<method>" and "<payloadName>"
    Then Verify Timesheet Status code <Expected_status>
    Examples:
      | endpoint             | method | Expected_status | payloadName   |
      | postTimesheetProject | post   | 200             | timesheetInfo |

  Scenario Outline: Task Logged for Timesheet API for Create Timesheet
    Given Set Task Logged for Timesheet endpoint and method and payload "<endpoint>" and "<method>" and "<payloadName>"
    Then Verify Timesheet Status code <Expected_status>
    Examples:
      | endpoint       | method | Expected_status | payloadName   |
      | postTaskLogged | post   | 200             | timesheetInfo |

  Scenario Outline: Fetch Template for User API for Manage Timesheet
    Given Set Fetch Template for User endpoint and method and payload "<endpoint>" and "<method>" and "<payloadName>"
    Then Verify Timesheet Status code <Expected_status>
    Examples:
      | endpoint          | method | Expected_status | payloadName |
      | postFetchTemplate | post   | 200             | commonLogin |

  Scenario Outline: Fetch Task Teams API for Manage Timesheet
    Given Set Fetch Task Teams endpoint and method "<endpoint>" and "<method>"
    Then Verify Timesheet Status code <Expected_status>
    Examples:
      | endpoint      | method | Expected_status |
      | postFetchTask | post   | 200             |

  Scenario Outline: Fetch Task Type API for Manage Timesheet
    Given Set Fetch Task Type endpoint and method and payload "<endpoint>" and "<method>" and "<payloadName>"
    Then Verify Timesheet Status code <Expected_status>
    Examples:
      | endpoint          | method | Expected_status | payloadName |
      | postFetchTaskType | post   | 200             | taskType    |