# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Post.create(title: "which branch", 
content: "If you use Git you can see which branch you are currently using (and set the colors of your terminal) with this nifty trick.
<br />
root
<div class="code"><span class="white">$</span> cd ~</span></div>

open bash
<div class="code"><span class="white">$</span> nano .bash_profile</span></div>
copy and paste
<div class="code"><span class="white">
COL_BLACK=</span>"$(tput setaf 0)"<span class="white">
COL_RED=</span>"$(tput setaf 1)"<span class="white">
COL_GREEN=</span>"$(tput setaf 2)"<span class="white">
COL_YELLOW=</span>"$(tput setaf 3)"<span class="white">
COL_BLUE=</span>"$(tput setaf 4)"<span class="white">
COL_MAGENTA=</span>"$(tput setaf 5)"<span class="white">
COL_CYAN=</span>"$(tput setaf 6)"<span class="white">
COL_WHITE=</span>"$(tput setaf 7)"<span class="white"></span></div>
Setaf X defines a color and sets that color equal to the variable like COL_COLOR. "$( )" is the syntax to describe a function in Unix. 'tput' is a Unix operator that defines output to terminal.
<br />
copy and paste
<div class="code"><span class="white">function parse_git_branch_and_add_brackets {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \[\1\]/'
}</span></div>
copy and paste
<div class="code"><span class="white">
export PS1="\[${COL_BLACK}\]\w\[${COL_YELLOW}\]\033[0;32m\]\$(parse_git_branch_and_add_brackets) \[\033[0m\]\$ "</span></div>
parse_git_branch_and_add_brackets is the name of the function. 'git branch' is the command to determine which branch is current. 'sed' is a Unix operator that defines a regular expression. <div class="note"><span class="note-icon">V</span>You may find out more about sed with Bruce Barnett's <a href="http://www.grymoire.com/Unix/SedChart.pdf">cheat sheet .pdf</a>.</div>
result
<div class="code"><span class="grey">~/Apps/Own_Office</span><span class="green">  [f28a16-redesign]</span><span class="white">  $</span></div>
<div class="note"><span class="note-icon">V</span>Open a new terminal window to see the changes because .bash_profile settings are called upon terminal start.</div> 

Hats off to the productivity increase from not typing 'git branch' a million times a day.
",
created_at: "2012-06-09 04:17:44", 
updated_at: "2012-06-15 22:54:47", 
tag_id: nil)
Post.create(title: "two peas in a pod", 
content: "Proc and lambda are different from one another. While both are commonly used to succinctly define a function as a variable they can have unintended results when defined within an action or method.
<br />
proc
<div class="code">def prc<br/><span class="white">
p = Proc.new { return "proc" } <br /> 
p.call <br />
return "proc misbehavior" <br /></span>
end</div>
pre
<div class="code">
def lmda<br /><span class="white">
l = lambda  { return "lambda" }  <br />
l.call <br />
return "lambda misbehavior"</span> <br />
end</div>
results
<div class="code">
puts prc <span class="white"># proc</span><br />
puts lambda <span class="white">#lambda misbehavior</span>
</div>

The .call method with a Proc receiver leaves control returning the Proc code block, whereas with lambda the .call method maintains control throughout the function returning the last line.

<div class="note">The full Wikipedia <a href="http://en.wikipedia.org/wiki/Closure_(computer_science)">article</a> goes into more detail about closures.</div>

The Proc Class is helpful if you have a function that needs to operate independently of the action or method in which it is nested, whereas lambda returns the final output in the block.
<br/><br />
In this way lambda mirrors Ruby's expected behavior more closely returning the last line in the action or method.
", 
created_at: "2012-06-10 00:27:49", 
updated_at: "2012-06-15 19:32:37", 
tag_id: nil)
Post.create(title: "pinky and the brain", 
	content: "'Echo' is a Unix command to output a string to terminal. Since your .bash_profile is loaded each time a new terminal is opened you can use echo to give yourself a personalized greeting. 
<div class="code"><span class="white">
echo "${COL_MAGENTA}What shall we do today, Pinky?"
<br />
echo "${COL_CYAN}...Try and take over the world."
</span></div>

This code uses echo to output the text in quotes and the variable in front of the text defines the color from before. I actually have this as my greeting right now.

Try these parlor tricks out at home and enjoy computing just a bit more.", 
	created_at: "2012-06-15 19:33:02", 
	updated_at: "2012-06-15 19:33:02", 
	tag_id: nil) 

