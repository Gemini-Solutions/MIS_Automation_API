Feature: MIS Portal API Login Authentication

  Scenario Outline: Authenticate User Login API
    Given Set endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | postApi  | post   | 200             |

  Scenario Outline: UnSuccessful Login User
    Given Set endpoint and method "<endpoint>" and "<Method>" invalid Header
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | postApi  | post   | 500             |

  Scenario Outline: Fetch Project assigned to user API
    Given Fetch project endpoint and method and sample "<endpoint>" and "<method>" and "<sampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint         | method | Expected_status | sampleName  |
      | postFetchProject | post   | 200             | commonLogin |


  Scenario Outline: Get User Detail using UserID API
    Given User Detail endpoint and method and sample "<endpoint>" and "<method>" and "<sampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint        | method | Expected_status | sampleName  |
      | postUserDetails | post   | 200             | commonLogin |

  Scenario Outline: Eligible User API Validation
    Given Eligible User endpoint and method and sample "<endpoint>" and "<method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint         | method | Expected_status |
      | postEligibleUser | post   | 200             |

  Scenario Outline: Fetch data from Employee Directory API Validation
    Given Employee Directory endpoint and method and sample "<endpoint>" and "<method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | method | Expected_status |
      | getFetchEmp | get    | 200             |


  Scenario Outline: Fetch Week Info API for Create Timesheet
    Given Week Info endpoint and method and sample "<endpoint>" and "<method>" and "<sampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint      | method | Expected_status | sampleName |
      | postFetchWeek | post   | 200             | weekInfo   |

  Scenario Outline: Fetch Timesheet Info API for Create Timesheet
    Given Timesheet Info endpoint and method and sample "<endpoint>" and "<method>" and "<sampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint           | method | Expected_status | sampleName    |
      | postFetchTimesheet | post   | 200             | timesheetInfo |

  Scenario Outline: Fetch Project for Timesheet API for Create Timesheet
    Given Project for Timesheet endpoint and method and sample "<endpoint>" and "<method>" and "<sampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint             | method | Expected_status | sampleName    |
      | postTimesheetProject | post   | 200             | timesheetInfo |

  Scenario Outline: Task Logged for Timesheet API for Create Timesheet
    Given Task Logged for Timesheet endpoint and method and sample "<endpoint>" and "<method>" and "<sampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint       | method | Expected_status | sampleName    |
      | postTaskLogged | post   | 200             | timesheetInfo |

  Scenario Outline: Fetch Template for User API for Manage Timesheet
    Given Fetch Template for User endpoint and method and sample "<endpoint>" and "<method>" and "<sampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint          | method | Expected_status | sampleName  |
      | postFetchTemplate | post   | 200             | commonLogin |

  Scenario Outline: Fetch Task Teams API for Manage Timesheet
    Given Fetch Task Teams endpoint and method and sample "<endpoint>" and "<method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint      | method | Expected_status |
      | postFetchTask | post   | 200             |

  Scenario Outline: Fetch Task Type API for Manage Timesheet
    Given Fetch Task Type endpoint and method and sample "<endpoint>" and "<method>" and "<sampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint          | method | Expected_status | sampleName |
      | postFetchTaskType | post   | 200             | taskType   |