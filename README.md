# Salesforce CLI Short-handed
It's time to making Salesforce DX commands repetitively easier. Why spend the effort typing `sfdx force` again and again when now you can just type `dx`?! With a simple script added to your `$PATH` that's all there is to it.

![dx](https://user-images.githubusercontent.com/1228550/35716265-03f7f772-0795-11e8-8b4c-6ac7bc1df273.jpg)

## Installation
Simple clone or download the `dx.sh` file and put it in your `$PATH`. If you're running oh-my-zsh you may want to setup a /bin/ directory to store this and any other custom scripts. If you decide to do that just make sure you update your `.zshrc` to include that directory in your `$PATH` like so:

`export PATH=$HOME/.oh-my-zsh/bin:$PATH`

### Additional Notes
You may need to setup an alias for the script to avoid typing `dx.sh` everytime. I'm told you shouldn't have to if you make it executable like so

`chmod +x dx.sh`

For whatever reason I couldn't avoid this so I added the alias to my `.zshrc` like so:

`alias dx='dx.sh'`

### Bonus Aliases!!!
I figure why not include some other nice tips/tricks for those that are still reading this:
```
# DX Aliases
alias dx='dx.sh'
alias dxq="sfdx force:data:soql:query -u Production -q $@"   // Change Production to your alias HubOrg
alias soql="sfdx force:data:soql:query -q $@"                // Instantly SOQL your current defaultusername org
```

Now you can query your production org like so:

`dxq "SELECT Id, Name, OwnerId FROM Account LIMIT 10"`

Also you can query your current defaultusername org like so:

`soql "SELECT Id, Name, OwnerId FROM Account LIMIT 10"`

Maybe you don't want your defaultusername, then modify it:

`soql "SELECT Id, Name, OwnerId FROM Account LIMIT 10" -u myorgalias`

## Special Thanks
Couldn't publish this without a huge thanks to [@JonDum](https://github.com/JonDum) for writing the script

## Conclusion
If you have an inspiration to add to this let me know and I can pull it in

Thanks! and Good Luck!
