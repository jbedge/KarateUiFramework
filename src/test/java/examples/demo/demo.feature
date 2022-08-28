Feature: browser automation 1

  Background:
    * configure driver = { type: 'chrome', showDriverLog: true, windowState:fullscreen }
#    * configure headers = read('classpath:my-headers.js')
#

  Scenario Outline: login to wiki and verify the screen
    Given driver "https://en.wikipedia.org/wiki/Wiki"
    * maximize()
    And waitFor("//*[@class='mw-interlanguage-selector mw-ui-button']").click()
#    * delay(1000)
    And waitFor("//input[@class='uls-filterinput uls-languagefilter noime languagefilter']").input('<language>')
#    * delay(1000)
    And waitFor("//*[contains(@class,'autonym') and text() = '<language>']").click()
#    to wait for page to complete
    * waitUntil("document.readyState == 'complete'")
#    Then waitFor('{a}Modifica collegamenti').click()
    Then waitFor('{a}Modifica collegamenti')
    * print text('.wbc-editpage')
    And match text('.wbc-editpage') == 'Modifica collegamenti'

    Examples:
      | language    |
      | Italiano    |
      | Italiano    |


#  click('{a}Click Me')	  the first <a> where the text-content is exactly: Click Me
#  click('{}Click Me')	  the first element (any tag name) where the text-content is exactly: Click Me
#  click('{^}Click')	  the first element (any tag name) where the text-content contains: Click
#  click('{^span}Click')	the first <span> where the text-content contains: Click
#  click('{div:2}Click Me')	the second <div> where the text-content is exactly: Click Me
#  click('{span/a}Click Me')	the first <a> where a <span> is the immediate parent, and where the text-content is exactly: Click Me
#  click('{^*:4}Me')	the fourth HTML element (of any tag name) where the text-content contains: Me

#  web	prefix:(none)	css selector	input[name=someName]
#  web	 prefix: /	xpath	//input[@name='commit']
#  web	prefix:{}	exact text content	{a}Click Me
#  web	prefix:{^}	partial text content	{^a}Click Me