#!/bin/bash
set -e

# Claude Persona Switch - Uninstallation Script
# Removes persona switching system from Claude Code

echo "🗑️  Uninstalling Claude Persona Switch..."
echo

# Check if Claude Code is installed
if [ ! -d "$HOME/.claude" ]; then
    echo "❌ Claude Code not found at ~/.claude"
    echo "Nothing to uninstall."
    exit 0
fi

# Confirmation prompt
echo "This will remove:"
echo "  - The /persona command from Claude Code"
echo "  - Default persona files (but preserve any custom personas you created)"
echo "  - The custom persona template"
echo
read -p "Are you sure you want to uninstall? (y/N): " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "❌ Uninstallation cancelled."
    exit 0
fi

echo

# Remove the main command
if [ -f "$HOME/.claude/commands/persona.md" ]; then
    rm "$HOME/.claude/commands/persona.md"
    echo "✓ Removed /persona command"
else
    echo "⚠️  /persona command not found, skipping..."
fi

# Remove default personas (but preserve custom ones)
echo "🔍 Checking for default personas to remove..."
default_personas=("developer" "architect" "reviewer" "consultant")
removed_personas=()
preserved_personas=()

for persona in "${default_personas[@]}"; do
    persona_file="$HOME/.claude/personas/$persona.md"
    if [ -f "$persona_file" ]; then
        # Check if it's still a default persona by looking for the persona activation line
        if grep -q "Persona Activated:" "$persona_file" 2>/dev/null; then
            rm "$persona_file"
            removed_personas+=("$persona")
        else
            preserved_personas+=("$persona")
        fi
    fi
done

# Report removal results
if [ ${#removed_personas[@]} -gt 0 ]; then
    echo "✓ Removed default personas:"
    for persona in "${removed_personas[@]}"; do
        echo "   - $persona"
    done
fi

if [ ${#preserved_personas[@]} -gt 0 ]; then
    echo "🔒 Preserved customized personas:"
    for persona in "${preserved_personas[@]}"; do
        echo "   - $persona (appears to be customized)"
    done
fi

# Remove template
if [ -f "$HOME/.claude/personas/examples/custom-persona-template.md" ]; then
    rm "$HOME/.claude/personas/examples/custom-persona-template.md"
    # Remove examples directory if empty
    rmdir "$HOME/.claude/personas/examples" 2>/dev/null || true
    echo "✓ Removed custom persona template"
fi

# Check if personas directory is empty (except for custom personas)
remaining_files=$(find "$HOME/.claude/personas" -name "*.md" -type f 2>/dev/null | wc -l)
if [ "$remaining_files" -eq 0 ]; then
    echo "📁 Personas directory is empty, removing it..."
    rmdir "$HOME/.claude/personas" 2>/dev/null || true
else
    echo "📁 Keeping ~/.claude/personas/ (contains $remaining_files custom persona(s))"
fi

echo
echo "✅ Uninstallation completed!"
echo
if [ "$remaining_files" -gt 0 ]; then
    echo "📝 Your custom personas were preserved in ~/.claude/personas/"
    echo "   You can reinstall Claude Persona Switch anytime and they'll still be available."
fi
echo
echo "To reinstall: curl -sSL https://raw.githubusercontent.com/[username]/claude-persona-switch/main/install.sh | bash"
echo
echo "Thanks for using Claude Persona Switch! 👋"