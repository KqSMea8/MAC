set DIR (dirname (status -f))

set -xg PATH ~/.rbenv/shims $PATH ~/.cargo/bin
set -xg EDITOR  'nvim'
set -xg LANG  'zh_CN.UTF-8'
set -xg CLICOLOR  1
set -xg GREP_OPTIONS  '--color=auto --exclude-dir=.cvs --exclude-dir=.git --exclude-dir=.hg --exclude-dir=.svn'
set -xg GREP_COLOR  '1;32'
set -xg HISTCONTROL  ignoreboth:erasedups		# for 'ignoreboth': ignore duplicates and /^\s/
set -xg HISTSIZE  9999
set -xg JAVA_HOME  "/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home"
set -xg FZF_DEFAULT_OPTS ' --bind="alt-j:down,alt-k:up,alt-h:backward-char,alt-l:forward-char,alt-space:jump,`:jump-accept" --color="pointer:15"'

function fish_prompt
    set_color green
    echo -n (count (jobs -p))":"(basename (pwd))' $ '
    set_color normal
end

function fish_title
    basename (pwd)
end

# set -xg fish_user_abbreviations # prevent save abbreviations
source $DIR/alias.fish
