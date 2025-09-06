---
name: persona
description: "Switch between different Claude personas or return to standard mode"
---

# Claude Persona Switcher

Switch between different Claude personas to get specialized responses, or return to standard Claude mode.

## Usage
- `/persona [persona-name]` - Switch to a specific persona
- `/persona clear` - Return to standard Claude mode

## Available Actions

**Switching to a persona:**
When you specify a persona name as `$1`, I will:

1. **Load the specified persona** from `~/.claude/personas/$1.md`
2. **Display the persona information** so you know what role I'm now adopting
3. **Apply the persona settings** for all subsequent interactions until cleared

**Clearing the persona:**
When you use `/persona clear`, I will:

1. **Reset to standard Claude mode**
2. **Confirm the persona has been cleared**
3. **Return to default behavior and responses**

## Implementation

**If no argument provided:**
📋 **Available Personas**

$(for f in ~/.claude/personas/*.md; do
  if [ -f "$f" ]; then
    name=$(basename "$f" .md)
    # Skip examples directory and other utility files
    if [ "$name" != "examples" ] && [ "$name" != "list" ]; then
      echo "- \`/persona $name\` - Switch to $name"
    fi
  fi
done)

- `/persona clear` - Return to standard Claude mode

**Current Status:** Standard Claude mode

To create custom personas, see `examples/custom-persona-template.md`

**If argument is "clear":**
🔄 **Persona Cleared**

I have returned to standard Claude mode. All persona-specific behaviors and constraints have been removed.

**If argument is a persona name:**
Let me load the $1 persona for you.

*Reading persona definition from ~/.claude/personas/$1.md...*

**If I cannot find the specified persona file:**
❌ **Persona Not Found**

The persona "$1" was not found in `~/.claude/personas/$1.md`.

**Available personas:**
$(for f in ~/.claude/personas/*.md; do
  if [ -f "$f" ]; then
    name=$(basename "$f" .md)
    # Skip examples directory and other utility files
    if [ "$name" != "examples" ] && [ "$name" != "list" ]; then
      echo "- $name"
    fi
  fi
done)

**To create a custom persona:**
1. Create a new `.md` file in `~/.claude/personas/`
2. Use the template from `examples/custom-persona-template.md`
3. Then use `/persona [your-persona-name]` to activate it