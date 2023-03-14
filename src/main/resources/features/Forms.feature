Feature: MIS Portal API Login Authentication

  Scenario Outline: API VALIDATION: Login
    Given Set endpoint "<endpoint>" and method "<method>" for MIS login
    Then Verify status code <expectedStatus>
    Examples:
      | endpoint | method | expectedStatus |
      | postApi  | post   | 200            |

  Scenario Outline: API VALIDATION: Department
    Given Set the endpoint "<endpoint>" and method "<method>" for department
    Then Verify status code <expectedStatus>
    Examples:
      | endpoint       | method | expectedStatus |
      | departmentsApi | post   | 200            |

  Scenario Outline: API VALIDATION: Department Data
    Given Set the endpoint "<endpoint>" and method "<method>" for department data
    Then Verify status code <expectedStatus>
    Examples:
      | endpoint           | method | expectedStatus |
      | dataForEmployeeApi | get    | 200            |

  Scenario Outline: API VALIDATION: Active Forms
    Given Set the endpoint "<endpoint>" , method "<method>" and "<sampleName>" for active forms
    Then Verify status code <expectedStatus>
    Examples:
      | endpoint       | method | expectedStatus | sampleName |
      | activeFormsApi | post   | 200            | department |

  Scenario Outline: API VALIDATION: My Forms
    Given Set the endpoint "<endpoint>" and method "<method>" for my forms
    Then Verify status code <expectedStatus>
    Examples:
      | endpoint      | method | expectedStatus |
      | allMyFormsApi | get    | 200            |

  Scenario Outline: API VALIDATION: Employee Directory
    Given Set the endpoint "<endpoint>" and method "<method>" for employee directory
    Then Verify status code <expectedStatus>
    Examples:
      | endpoint             | method | expectedStatus |
      | employeeDirectoryApi | get    | 200            |

  Scenario Outline: API VALIDATION: User Skill
    Given Set the endpoint "<endpoint>" , method "<method>" and "<sampleName>" for user skill
    Then Verify status code <expectedStatus>
    Examples:
      | endpoint        | method | expectedStatus | sampleName |
      | getUserSkillApi | post   | 200            | userSkill  |


  Scenario Outline: API VALIDATION: Active Forms Negative Scenario
    Given Set the endpoint "<endpoint>" , method "<method>" and "<sampleName>" for active forms
    Then Verify status code <expectedStatus>
    Examples:
      | endpoint       | method | expectedStatus | sampleName         |
      | activeFormsApi | post   | 400            | departmentNegative |

  Scenario Outline: API VALIDATION: User Skill Negative Scenario
    Given Set the endpoint "<endpoint>" , method "<method>" and "<sampleName>" for user skill
    Then Verify status code <expectedStatus>
    Examples:
      | endpoint        | method | expectedStatus | sampleName        |
      | getUserSkillApi | post   | 400            | userSkillNegative |

  Scenario Outline:API VALIDATION: User Skill Invalid Header
    When Set the endpoint "<endpoint>" , method "<method>" and "<sampleName>" for invalid headers
    Then Verify status code <expectedStatus>
    Examples:
      | endpoint        | method | expectedStatus | sampleName |
      | getUserSkillApi | post   | 401            | userSkill  |

  Scenario Outline: API VALIDATION: Active Forms Invalid Header
    Given Set the endpoint "<endpoint>" , method "<method>" and "<sampleName>" for invalid headers
    Then Verify status code <expectedStatus>
    Examples:
      | endpoint       | method | expectedStatus | sampleName |
      | activeFormsApi | post   | 401            | department |

  Scenario Outline: API VALIDATION: User Skill Wrong Method
    Given Set the endpoint "<endpoint>" , method "<method>" and "<sampleName>" for user skill
    Then Verify status code <expectedStatus>
    Examples:
      | endpoint        | method | expectedStatus | sampleName |
      | getUserSkillApi | get    | 405            | userSkill  |

  Scenario Outline: API VALIDATION: Login Wrong Method
    Given Set endpoint "<endpoint>" and method "<method>" for MIS login
    Then Verify status code <expectedStatus>
    Examples:
      | endpoint | method | expectedStatus |
      | postApi  | get    | 405            |

  Scenario Outline: API VALIDATION: Department Wrong Department
    Given Set the endpoint "<endpoint>" and method "<method>" for department
    Then Verify status code <expectedStatus>
    Examples:
      | endpoint       | method | expectedStatus |
      | departmentsApi | get    | 405            |

  Scenario Outline: API VALIDATION: Department Data Wrong Method
    Given Set the endpoint "<endpoint>" and method "<method>" for department data
    Then Verify status code <expectedStatus>
    Examples:
      | endpoint           | method | expectedStatus |
      | dataForEmployeeApi | post   | 405            |

  Scenario Outline: API VALIDATION: Active Forms Wrong Method
    Given Set the endpoint "<endpoint>" , method "<method>" and "<sampleName>" for active forms
    Then Verify status code <expectedStatus>
    Examples:
      | endpoint       | method | expectedStatus | sampleName |
      | activeFormsApi | get   | 405            | department |

  Scenario Outline: API VALIDATION: My Forms Wrong Method
    Given Set the endpoint "<endpoint>" and method "<method>" for my forms
    Then Verify status code <expectedStatus>
    Examples:
      | endpoint      | method | expectedStatus |
      | allMyFormsApi | post   | 405       |

  Scenario Outline: API VALIDATION: Employee Directory Wrong Method
    Given Set the endpoint "<endpoint>" and method "<method>" for employee directory
    Then Verify status code <expectedStatus>
    Examples:
      | endpoint             | method | expectedStatus |
      | employeeDirectoryApi | post   | 405          |

  Scenario Outline: API VALIDATION: User Skill Wrong Method
    Given Set the endpoint "<endpoint>" , method "<method>" and "<sampleName>" for user skill
    Then Verify status code <expectedStatus>
    Examples:
      | endpoint        | method | expectedStatus | sampleName |
      | getUserSkillApi | get | 405         | userSkill  |
