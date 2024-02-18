# Disable completion fixes
ZSH_DISABLE_COMPFIX="true"

# Use arch-specific version of Homebrew
[[ $(arch) = "arm64" ]] &&
    eval "$(/opt/homebrew/bin/brew shellenv)" ||
    eval "$(/usr/local/Homebrew/bin/brew shellenv)"

# Set arch-specific default platform for Docker
[[ $(arch) = "arm64" ]] &&
    export DOCKER_DEFAULT_PLATFORM="linux/arm64/v8" ||
    export DOCKER_DEFAULT_PLATFORM="linux/amd64"

# Customize prompt
PROMPT='%n@%m:%F{cyan}'"$(uname -m)"'%f %1~ %# '
