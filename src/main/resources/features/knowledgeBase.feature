#Author: charu.garg@geminisolutions.com
#Keyword: Knowledge Base

Feature: KnowledgeBase Api

  Background: API VALIDATION: Login
    Given Set endpoint "postApi" and method "post"
    Then Verify Policy status code 200


  Scenario Outline: API VALIDATION: GetDocumentByGroupId
    Given Set the KnowledgeBase endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify KnowledgeBase status code <expectedStatus>
    Examples:
      | endpoint             | method | expectedStatus | payloadName          |
      | GetDocumentByGroupId | post   | 200            | getDocumentByGroupId |

  Scenario Outline: API VALIDATION: GetDocumentGroupsByParentId
    Given Set the KnowledgeBase endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify KnowledgeBase status code <expectedStatus>
    Examples:
      | endpoint                    | method | expectedStatus | payloadName                 |
      | GetDocumentGroupsByParentId | post   | 200            | getDocumentGroupsByParentId |

  Scenario Outline: API VALIDATION: GetAllDocumentTags
    Given Set the KnowledgeBase endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify KnowledgeBase status code <expectedStatus>
    Examples:
      | endpoint           | method | expectedStatus | payloadName        |
      | GetAllDocumentTags | post   | 200            | getAllDocumentTags |

  Scenario Outline: API VALIDATION: GetSharedDocumentByToUserTags
    Given Set the KnowledgeBase endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify KnowledgeBase status code <expectedStatus>
    Examples:
      | endpoint                  | method | expectedStatus | payloadName               |
      | GetSharedDocumentByToUser | post   | 200            | getSharedDocumentByToUser |

  Scenario Outline: API VALIDATION: GetDocumentByGroupId Negative Scenario
    Given Set the KnowledgeBase endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify KnowledgeBase status code <expectedStatus>
    Examples:
      | endpoint             | method | expectedStatus | payloadName             |
      | GetDocumentByGroupId | post   | 400            | getDocumentByGroupIdNeg |

  Scenario Outline: API VALIDATION: GetDocumentGroupsByParentId Negative Scenario
    Given Set the KnowledgeBase endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify KnowledgeBase status code <expectedStatus>
    Examples:
      | endpoint                    | method | expectedStatus | payloadName                    |
      | GetDocumentGroupsByParentId | post   | 400            | getDocumentGroupsByParentIdNeg |

  Scenario Outline: API VALIDATION: GetAllDocumentTags Negative Scenario
    Given Set the KnowledgeBase endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify KnowledgeBase status code <expectedStatus>
    Examples:
      | endpoint           | method | expectedStatus | payloadName           |
      | GetAllDocumentTags | post   | 400            | getAllDocumentTagsNeg |

  Scenario Outline: API VALIDATION: GetSharedDocumentByToUserTags Negative Scenario
    Given Set the KnowledgeBase endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify KnowledgeBase status code <expectedStatus>
    Examples:
      | endpoint                  | method | expectedStatus | payloadName                  |
      | GetSharedDocumentByToUser | post   | 400            | getSharedDocumentByToUserNeg |

  Scenario Outline:API VALIDATION: FetchPolicyInformation Invalid Header
    When Set the KnowledgeBase endpoint "<endpoint>" , method "<method>" and "<payloadName>" for invalid
    Then Verify KnowledgeBase status code <expectedStatus>
    Examples:
      | endpoint             | method | expectedStatus | payloadName          |
      | GetDocumentByGroupId | post   | 401            | getDocumentByGroupId |


  Scenario Outline: API VALIDATION: GetDocumentGroupsByParentId Invalid Header
    When Set the KnowledgeBase endpoint "<endpoint>" , method "<method>" and "<payloadName>" for invalid
    Then Verify KnowledgeBase status code <expectedStatus>
    Examples:
      | endpoint                    | method | expectedStatus | payloadName                 |
      | GetDocumentGroupsByParentId | post   | 401            | getDocumentGroupsByParentId |

  Scenario Outline: API VALIDATION: GetAllDocumentTags Invalid Header
    When Set the KnowledgeBase endpoint "<endpoint>" , method "<method>" and "<payloadName>" for invalid
    Then Verify KnowledgeBase status code <expectedStatus>
    Examples:
      | endpoint           | method | expectedStatus | payloadName        |
      | GetAllDocumentTags | post   | 401            | getAllDocumentTags |

  Scenario Outline: API VALIDATION: GetSharedDocumentByToUserTags Invalid Header
    When Set the KnowledgeBase endpoint "<endpoint>" , method "<method>" and "<payloadName>" for invalid
    Then Verify KnowledgeBase status code <expectedStatus>
    Examples:
      | endpoint                  | method | expectedStatus | payloadName               |
      | GetSharedDocumentByToUser | post   | 401            | getSharedDocumentByToUser |

  Scenario Outline: API VALIDATION: GetDocumentByGroupId Wrong Method
    Given Set the KnowledgeBase endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify KnowledgeBase status code <expectedStatus>
    Examples:
      | endpoint             | method | expectedStatus | payloadName          |
      | GetDocumentByGroupId | get    | 405            | getDocumentByGroupId |

  Scenario Outline: API VALIDATION: GetDocumentGroupsByParentId Wrong Method
    Given Set the KnowledgeBase endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify KnowledgeBase status code <expectedStatus>
    Examples:
      | endpoint                    | method | expectedStatus | payloadName                 |
      | GetDocumentGroupsByParentId | get    | 405            | getDocumentGroupsByParentId |

  Scenario Outline: API VALIDATION: GetAllDocumentTags Wrong Method
    Given Set the KnowledgeBase endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify KnowledgeBase status code <expectedStatus>
    Examples:
      | endpoint           | method | expectedStatus | payloadName        |
      | GetAllDocumentTags | get    | 405            | getAllDocumentTags |

  Scenario Outline: API VALIDATION: GetSharedDocumentByToUserTags Wrong Method
    Given Set the KnowledgeBase endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify KnowledgeBase status code <expectedStatus>
    Examples:
      | endpoint                  | method | expectedStatus | payloadName               |
      | GetSharedDocumentByToUser | get    | 405            | getSharedDocumentByToUser |


