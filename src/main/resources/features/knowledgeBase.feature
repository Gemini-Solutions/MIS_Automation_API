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
      | endpoint             | method | expectedStatus | payloadName           |
      | GetDocumentByGroupId | post   | 200            | getDocumentByGroupId |

  Scenario Outline: API VALIDATION: GetDocumentGroupsByParentId
    Given Set the KnowledgeBase endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify KnowledgeBase status code <expectedStatus>
    Examples:
      | endpoint                    | method | expectedStatus | payloadName                  |
      | GetDocumentGroupsByParentId | post   | 200            | getDocumentGroupsByParentId |

  Scenario Outline: API VALIDATION: GetAllDocumentTags
    Given Set the KnowledgeBase endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify KnowledgeBase status code <expectedStatus>
    Examples:
      | endpoint           | method | expectedStatus | payloadName         |
      | GetAllDocumentTags | post   | 200            | getAllDocumentTags |

  Scenario Outline: API VALIDATION: GetSharedDocumentByToUserTags
    Given Set the KnowledgeBase endpoint "<endpoint>" , method "<method>" and "<payloadName>"
    Then Verify KnowledgeBase status code <expectedStatus>
    Examples:
      | endpoint                  | method | expectedStatus | payloadName                |
      | GetSharedDocumentByToUser | post   | 200            | getSharedDocumentByToUser |