#Author: charu.garg@geminisolutions.com
#Keyword: Knowledge Base

Feature: KnowledgeBase Api

  Scenario Outline: API VALIDATION: Login
    Given Set endpoint "<endpoint>" and method "<method>"
    Then Verify status code <expectedStatus>
    Examples:
      | endpoint | method | expectedStatus |
      | postApi  | post   | 200            |

  Scenario Outline: API VALIDATION: GetDocumentByGroupId
    Given Set the KnowledgeBase endpoint "<endpoint>" , method "<method>" and "<sampleName>"
    Then Verify KnowledgeBase status code <expectedStatus>
    Examples:
      | endpoint             | method | expectedStatus | sampleName           |
      | GetDocumentByGroupId | post   | 200            | getDocumentByGroupId |

  Scenario Outline: API VALIDATION: GetDocumentGroupsByParentId
    Given Set the KnowledgeBase endpoint "<endpoint>" , method "<method>" and "<sampleName>"
    Then Verify KnowledgeBase status code <expectedStatus>
    Examples:
      | endpoint                    | method | expectedStatus | sampleName                  |
      | GetDocumentGroupsByParentId | post   | 200            | getDocumentGroupsByParentId |

  Scenario Outline: API VALIDATION: GetAllDocumentTags
    Given Set the KnowledgeBase endpoint "<endpoint>" , method "<method>" and "<sampleName>"
    Then Verify KnowledgeBase status code <expectedStatus>
    Examples:
      | endpoint           | method | expectedStatus | sampleName         |
      | GetAllDocumentTags | post   | 200            | getAllDocumentTags |

  Scenario Outline: API VALIDATION: GetSharedDocumentByToUserTags
    Given Set the KnowledgeBase endpoint "<endpoint>" , method "<method>" and "<sampleName>"
    Then Verify KnowledgeBase status code <expectedStatus>
    Examples:
      | endpoint                  | method | expectedStatus | sampleName                |
      | GetSharedDocumentByToUser | post   | 200            | getSharedDocumentByToUser |