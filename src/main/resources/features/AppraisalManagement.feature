Feature: MIS Portal API Login Authentication

  Scenario Outline: Authenticate User Login API
    Given Set endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | postApi  | post   | 200             |

  Scenario Outline: UnSuccessful Login User
    Given Set endpoint and method "<endpoint>" and "<Method>" and invalid Header
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | postApi  | post   | 500             |

  Scenario Outline: Set KRA KPI Mapping API
    Given Set User endpoint and method "<endpoint>" and "<method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint                | method | Expected_status |
      | postGetKRAKPIMappingUrl | post   | 200             |

  Scenario Outline: Set All Goal Cycle Id To View Achievement
    Given Set project endpoint and method and sample "<endpoint>" and "<Method>" and "<sampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint                               | Method | Expected_status | sampleName     |
      | postGetAllGoalCycleIdToViewAchievement | post   | 200             | forTeamIsFalse |

  Scenario Outline: Set KRA KPI Mapping Url
    Given Set User endpoint and method "<endpoint>" and "<method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint                         | method | Expected_status |
      | getFetchDataForEmployeeDirectory | get    | 200             |

  Scenario Outline: Set All Self Goals
    Given Set project endpoint and method and sample "<endpoint>" and "<Method>" and "<sampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint            | Method | Expected_status | sampleName     |
      | postGetAllSelfGoals | post   | 200             | getAllSetGoals |

  Scenario Outline: Set Goal Data
    Given Set project endpoint and method and sample "<endpoint>" and "<Method>" and "<sampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint        | Method | Expected_status | sampleName  |
      | postGetGoalData | post   | 200             | commonLogin |

  Scenario Outline: Set User Skill
    Given Set project endpoint and method and sample "<endpoint>" and "<Method>" and "<sampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint            | Method | Expected_status | sampleName  |
      | postGetUserCoeSkill | post   | 200             | commonLogin |

  Scenario Outline: Set Skill Data
    Given Set User endpoint and method "<endpoint>" and "<method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint         | method | Expected_status |
      | postGetSkillData | post      | 200             |

  Scenario Outline: Set Goal Category
    Given Set User endpoint and method "<endpoint>" and "<method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint              | method | Expected_status |
      | postFetchGoalCategory | post      | 200             |

  Scenario Outline: Set All Goal Cycle Id
    Given Set project endpoint and method and sample "<endpoint>" and "<Method>" and "<sampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint           | Method | Expected_status | sampleName     |
      | postAllGoalCycleId | post   | 200             | forTeamIsFalse |

  Scenario Outline: Set Goal History By Id
    Given Set project endpoint and method and sample "<endpoint>" and "<Method>" and "<sampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint                 | Method | Expected_status | sampleName           |
      | postFetchGoalHistoryById | post   | 200             | FetchGoalHistoryById |

  Scenario Outline: Set Submit Goal
    Given Set project endpoint and method and sample "<endpoint>" and "<Method>" and "<sampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint       | Method | Expected_status | sampleName |
      | postSubmitGoal | post   | 200             | SubmitGoal |

  Scenario Outline: Set Add User KRA
    Given Set project endpoint and method and sample "<endpoint>" and "<Method>" and "<sampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint       | Method | Expected_status | sampleName |
      | postAddUserKRA | post   | 200             | addUserKRA |


  Scenario Outline: Set Delete Goal
    Given Set project endpoint and method and sample "<endpoint>" and "<Method>" and "<sampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint       | Method | Expected_status | sampleName |
      | postDeleteGoal | post   | 200             | deleteGoal |