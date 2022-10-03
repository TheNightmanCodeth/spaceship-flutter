#
# Foobar
#
# Foobar is a supa-dupa cool tool for making you development easier.
# Link: https://www.foobar.xyz

# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_FLUTTER_SHOW="${SPACESHIP_FOOBAR_SHOW=true}"
SPACESHIP_FLUTTER_ASYNC="${SPACESHIP_FOOBAR_ASYNC=true}"
SPACESHIP_FLUTTER_PREFIX="${SPACESHIP_FLUTTER_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_FLUTTER_SUFFIX="${SPACESHIP_FLUTTER_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_FLUTTER_SHOW_CHANNEL="${SPACESHIP_FLUTTER_SHOW_BRANCH=false}"
SPACESHIP_FLUTTER_COLOR="${SPACESHIP_FLUTTER_COLOR="blue"}"
SPACESHIP_FLUTTER_SYMBOL="${SPACESHIP_FLUTTER_SYMBOL="🦋 "}"


# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------

# Show foobar status
# spaceship_ prefix before section's name is required!
# Otherwise this section won't be loaded.
spaceship_flutter() {
  # If SPACESHIP_FLUTTER_SHOW is false, don't show foobar section
  [[ $SPACESHIP_FLUTTER_SHOW == false ]] && return

  # Check if flutter command is available for execution
  spaceship::exists flutter || return

  local is_flutter_context_pubspec="$(spaceship::upsearch pubspec.yaml)"
  [[ $is_flutter_context_pubspec ]] && local is_flutter_context="$(grep -q flutter pubspec.yaml)"

  [[ -n $is_flutter_context_pubspec || -n $is_flutter_context ]] || return

  # Only call flutter --version once, it takes long to load (?)
  local flutter_out=$(flutter --version)
  local flutter_version=${(@)$(flutter --version 2>&1)[2]}
  local flutter_channel=${(@)$(flutter --version 2>&1)[5]}

  [[ $SPACESHIP_FLUTTER_SHOW_CHANNEL && $is_flutter_context_pubspec ]] && flutter_version+=" ${flutter_channel}"

  # Display foobar section
  # spaceship::section utility composes sections. Flags are optional
  spaceship::section::v4 \
    --color "$SPACESHIP_FLUTTER_COLOR" \
    --prefix "$SPACESHIP_FLUTTER_PREFIX" \
    --suffix "$SPACESHIP_FLUTTER_SUFFIX" \
    --symbol "$SPACESHIP_FLUTTER_SYMBOL" \
    "$flutter_version"
}
