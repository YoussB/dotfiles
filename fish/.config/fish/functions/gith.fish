# Defined in - @ line 1
function gith --description 'alias gith=git stash && git pull && git stash pop'
	git stash && git pull && git stash pop $argv;
end
