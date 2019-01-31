#!/bin/bash
# Authors : Nate Jones
# Date: 1/31/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

echo "Enter expression: "
read exp
echo "Enter a filename: "
read filename

# grep exp filename

grep -c '\(([0-9]\{3\})\|[0-9]\{3\}\)[ -]\?[0-9]\{3\}[ -]\?[0-9]\{4\}' $filename
grep -c '[[:alnum:]+\.\_\-]*@[[:alnum:]+\.\_\-]*' $filename
grep -n '303-[0-9]\{3\}-[0-9]\{4\}' $filename * > phone_results.txt 
grep -n '@geocities.com' $filename * > email_results.txt
grep -n $exp $filename * > command_results.txt