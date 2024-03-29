Feature: Samourai Feeds Dog

  Scenario: Samurai feeds his dog
    Given a samourai named "Gintoki"
    And a dog named "Sadaharu"
    When the samourai feeds the dog with "Shinpachi"
    Then the dog should be satisfied

  Scenario Outline: Samourai feeds his dog with various foods
    Given a samourai named "Gintoki"
    And a dog named "Sadaharu"
    When the samourai feeds the dog with <food>
    Then the dog should be satisfied

    Examples:
        | food            |
        | meat            |
        | bones           |
        | rice            |
        | vegetables      |
        | dog biscuits    |

  Scenario: Samurai does not feed his dog
    Given a samourai named "Gintoki"
    And a dog named "Sadaharu"
    When the samourai feeds the dog with ""
    Then the dog eat "Shinpachi and Kagura"