Feature: MIS Portal API Login Authentication

  Scenario Outline: API VALIDATION: Login Dashboard Authentication
    Given Set endpoint "<endpoint>" and method "<method>" for Login Dashboard Authentication
    Then Verify status code <expectedStatus>
    Examples:
      | endpoint | method | expectedStatus |
      | postApi  | post   | 200            |

  Scenario Outline: API VALIDATION: User Profile Data
    Given Set the endpoint "<endpoint>" , method "<method>" and "<sampleName>" for User Profile Data
    Then Verify status code <expectedStatus>
    Examples:

      | endpoint        | method | expectedStatus | sampleName  |
      | UserProfileData | post   | 200            | UsePrflData |

  Scenario Outline: API VALIDATION: News For Slider
    Given Set the endpoint "<endpoint>" , method "<method>" and "<sampleName>" for News For Slider
    Then Verify status code <expectedStatus>
    Examples:

      | endpoint      | method | expectedStatus | sampleName |
      | NewsForSlider | post   | 200            | NwFrSlider |

  Scenario Outline: API VALIDATION: User Dashboard Calendar Data
    Given Set the endpoint "<endpoint>" , method "<method>" and "<sampleName>" for Dashboard Calendar Data
    Then Verify status code <expectedStatus>
    Examples:

      | endpoint              | method | expectedStatus | sampleName       |
      | DashboardCalendarData | post   | 200            | UsrDshbrdCalData |

  Scenario Outline: API VALIDATION: User Current Time Day Data
    Given Set the endpoint "<endpoint>" , method "<method>" and "<sampleName>" for User Current Time Day Data
    Then Verify status code <expectedStatus>
    Examples:

      | endpoint              | method | expectedStatus | sampleName      |
      | OutTimeCurrentDayData | post   | 200            | OutTmCurrDyData |

  Scenario Outline: API VALIDATION: User Role Dashboard Settings
    Given Set the endpoint "<endpoint>" and method "<method>" for User Role Dashboard Settings
    Then Verify status code <expectedStatus>
    Examples:
      | endpoint             | method | expectedStatus |
      | UserDefaulterHistory | post   | 200            |


  Scenario Outline: API VALIDATION: Data For Employee Directory
    Given Set the endpoint "<endpoint>" and method "<method>" for Data For Employee Directory
    Then Verify status code <expectedStatus>
    Examples:
      | endpoint                 | method | expectedStatus |
      | DataForEmployeeDirectory | get    | 200            |


  Scenario Outline: API VALIDATION: User Get Cab Request
    Given Set the endpoint "<endpoint>" and method "<method>" for User Get Cab Request
    Then Verify status code <expectedStatus>
    Examples:
      | endpoint      | method | expectedStatus |
      | GetCabRequest | post   | 200            |


  Scenario Outline: API VALIDATION: User Get Referral
    Given Set the endpoint "<endpoint>" and method "<method>" for User Get Referral
    Then Verify status code <expectedStatus>
    Examples:
      | endpoint    | method | expectedStatus |
      | GetReferral | post   | 200            |


  Scenario Outline: API VALIDATION: User Get My Referral
    Given Set the endpoint "<endpoint>" , method "<method>" and "<sampleName>" for User Get My Referral
    Then Verify status code <expectedStatus>
    Examples:

      | endpoint      | method | expectedStatus | sampleName |
      | GetMyReferral | post   | 200            | MyRef      |


  Scenario Outline: API VALIDATION: User Get Upcoming Birthday And Holiday
    Given Set the endpoint "<endpoint>" , method "<method>" and "<sampleName>" for User Get Upcoming Birthday And Holiday
    Then Verify status code <expectedStatus>
    Examples:

      | endpoint                      | method | expectedStatus | sampleName     |
      | GetUpcomingBirthdayAndHoliday | post   | 200            | UpcmgBdyNHoldy |


  Scenario Outline: API VALIDATION: User Get Leave Balance Data
    Given Set the endpoint "<endpoint>" , method "<method>" and "<sampleName>" for User Get Leave Balance Data
    Then Verify status code <expectedStatus>
    Examples:

      | endpoint            | method | expectedStatus | sampleName       |
      | GetLeaveBalanceData | post   | 200            | GetLveBalnceData |

  Scenario Outline: API VALIDATION: User Get User Skills Data Dashboard
    Given Set the endpoint "<endpoint>" , method "<method>" and "<sampleName>" for User Get User Skills Data Dashboard
    Then Verify status code <expectedStatus>
    Examples:

      | endpoint      | method | expectedStatus | sampleName |
      | GetUserSkills | post   | 200            | GetUsrSk   |

  Scenario Outline: API VALIDATION: User Get Work Anniversary
    Given Set the endpoint "<endpoint>" , method "<method>" and "<sampleName>" for User Get Work Anniversary
    Then Verify status code <expectedStatus>
    Examples:

      | endpoint      | method | expectedStatus | sampleName |
      | GetUserSkills | post   | 200            | GetWrkAnnv |

  Scenario Outline: API VALIDATION: User Get Teams leave
    Given Set the endpoint "<endpoint>" , method "<method>" and "<sampleName>" for User Get Teams leave
    Then Verify status code <expectedStatus>
    Examples:

      | endpoint      | method | expectedStatus | sampleName |
      | GetTeamsLeave | post   | 200            | GetTemLve  |


  Scenario Outline: API VALIDATION: User Get Cab Request Details
    Given Set the endpoint "<endpoint>" , method "<method>" and "<sampleName>" for User Get Cab Request Details
    Then Verify status code <expectedStatus>
    Examples:

      | endpoint             | method | expectedStatus | sampleName   |
      | GetCabRequestDetails | post   | 200            | GetCbReqDetl |


  Scenario Outline: API VALIDATION: User Get Self Attendance Data
    Given Set the endpoint "<endpoint>" , method "<method>" and "<sampleName>" for User Get Self Attendance Data
    Then Verify status code <expectedStatus>
    Examples:

      | endpoint              | method | expectedStatus | sampleName       |
      | GetSelfAttendanceData | post   | 200            | GetSlfAttendData |


