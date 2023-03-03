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

  Scenario Outline: Fetch KRAKPIMapping API
    Given Fetch User endpoint and method "<endpoint>" and "<method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint                | method | Expected_status |
      | postGetKRAKPIMappingUrl | post   | 200             |

  Scenario Outline: Fetch GetAllGoalCycleIdToViewAchievement
    Given Fetch project endpoint and method and sample "<endpoint>" and "<Method>" and "<sampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint                               | Method | Expected_status | sampleName     |
      | postGetAllGoalCycleIdToViewAchievement | post   | 200             | forTeamIsFalse |

  Scenario Outline: Fetch GetKRAKPIMappingUrl
    Given Fetch User endpoint and method "<endpoint>" and "<method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint                         | method | Expected_status |
      | getFetchDataForEmployeeDirectory | get    | 200             |

  Scenario Outline: Fetch postGetAllSelfGoals
    Given Fetch project endpoint and method and sample "<endpoint>" and "<Method>" and "<sampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint            | Method | Expected_status | sampleName     |
      | postGetAllSelfGoals | post   | 200             | getAllSetGoals |

  Scenario Outline: Fetch postGetGoalData
    Given Fetch project endpoint and method and sample "<endpoint>" and "<Method>" and "<sampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint        | Method | Expected_status | sampleName  |
      | postGetGoalData | post   | 200             | commonLogin |

  Scenario Outline: Fetch postGetUserCoeSkill
    Given Fetch project endpoint and method and sample "<endpoint>" and "<Method>" and "<sampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint            | Method | Expected_status | sampleName  |
      | postGetUserCoeSkill | post   | 200             | commonLogin |

  Scenario Outline: Fetch postGetSkillData
    Given Fetch User endpoint and method "<endpoint>" and "<method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint         | method | Expected_status |
      | postGetSkillData | post      | 200             |

  Scenario Outline: Fetch postFetchGoalCategory
    Given Fetch User endpoint and method "<endpoint>" and "<method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint              | method | Expected_status |
      | postFetchGoalCategory | post      | 200             |

  Scenario Outline: Fetch postAllGoalCycleId
    Given Fetch project endpoint and method and sample "<endpoint>" and "<Method>" and "<sampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint           | Method | Expected_status | sampleName     |
      | postAllGoalCycleId | post   | 200             | forTeamIsFalse |

  Scenario Outline: Fetch postFetchGoalHistoryById
    Given Fetch project endpoint and method and sample "<endpoint>" and "<Method>" and "<sampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint                 | Method | Expected_status | sampleName           |
      | postFetchGoalHistoryById | post   | 200             | FetchGoalHistoryById |

  Scenario Outline: Fetch postSubmitGoal
    Given Fetch project endpoint and method and sample "<endpoint>" and "<Method>" and "<sampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint       | Method | Expected_status | sampleName |
      | postSubmitGoal | post   | 200             | SubmitGoal |

  Scenario Outline: Fetch postAddUserKRA
    Given Fetch project endpoint and method and sample "<endpoint>" and "<Method>" and "<sampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint       | Method | Expected_status | sampleName |
      | postAddUserKRA | post   | 200             | addUserKRA |


  Scenario Outline: Fetch postDeleteGoal
    Given Fetch project endpoint and method and sample "<endpoint>" and "<Method>" and "<sampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint       | Method | Expected_status | sampleName |
      | postDeleteGoal | post   | 200             | deleteGoal |