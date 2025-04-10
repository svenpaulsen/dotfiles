if status is-interactive
    # Commands to run in interactive sessions can go here
end

# NVM setup

function nvm
        bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use default --silent

# JDK setup

set -x JAVA_HOME (brew --prefix openjdk)/libexec/openjdk.jdk/Contents/Home
set -x PATH $JAVA_HOME/bin $PATH
