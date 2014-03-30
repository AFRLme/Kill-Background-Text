Kill Background Text (*multiple options*) for Visionaire Studio: Adventure Game Engine [Lua] - more info [here](http://wiki.visionaire-tracker.net/wiki/Kill_Background_Text_%28CMS%29 "kill background text wiki article")

This script allows you to call a function which kills the active displayed text (background) of current character, all characters, or all background texts in general. 

**Instructions**

*1*. Add the main script to the Visionaire Studio Script Editor & set the script as a definition script.

*2a*. To kill all currently active background texts: create an execute a script action containing...
```
killText(1)
```
*2b*. To kill all currently active character based background texts: create an execute a script action containing...
```
killText(2)
```
*2c*. To kill currently active background text of current character: create an execute a script action containing...
```
killText(3)
```
