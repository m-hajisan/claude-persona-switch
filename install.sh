#!/bin/bash
set -e

# Claude Persona Switch - Installation Script
# Installs persona switching system for Claude Code

echo "🤖 Installing Claude Persona Switch..."
echo

# Check if Claude Code is installed
if [ ! -d "$HOME/.claude" ]; then
    echo "❌ Claude Code not found!"
    echo "Please install Claude Code first: https://claude.ai/code"
    echo
    exit 1
fi

echo "✓ Claude Code installation detected"

# Create necessary directories
echo "📁 Creating directories..."
mkdir -p "$HOME/.claude/commands"
mkdir -p "$HOME/.claude/personas"

# Install the main command
echo "⚡ Installing persona command..."
if [ -f "commands/persona.md" ]; then
    cp "commands/persona.md" "$HOME/.claude/commands/"
    echo "✓ Installed /persona command"
else
    echo "❌ Error: commands/persona.md not found"
    exit 1
fi

# Install persona files (skip if already exists to preserve customizations)
echo "👤 Installing default personas..."
installed_personas=()
skipped_personas=()

for persona_file in personas/*.md; do
    if [ -f "$persona_file" ]; then
        persona_name=$(basename "$persona_file" .md)
        target_file="$HOME/.claude/personas/$persona_name.md"
        
        if [ ! -f "$target_file" ]; then
            cp "$persona_file" "$target_file"
            installed_personas+=("$persona_name")
        else
            skipped_personas+=("$persona_name")
        fi
    fi
done

# Report installation results
echo
if [ ${#installed_personas[@]} -gt 0 ]; then
    echo "✅ Installed personas:"
    for persona in "${installed_personas[@]}"; do
        echo "   - $persona"
    done
fi

if [ ${#skipped_personas[@]} -gt 0 ]; then
    echo "⏭️  Skipped existing personas (preserved your customizations):"
    for persona in "${skipped_personas[@]}"; do
        echo "   - $persona"
    done
fi

# Copy custom template
echo
echo "📝 Installing custom persona template..."
if [ -f "examples/custom-persona-template.md" ]; then
    mkdir -p "$HOME/.claude/personas/examples"
    cp "examples/custom-persona-template.md" "$HOME/.claude/personas/examples/"
    echo "✓ Template available at: ~/.claude/personas/examples/custom-persona-template.md"
else
    echo "⚠️  Custom template not found, skipping..."
fi


# Installation complete
echo
echo "🎉 Installation completed successfully!"
echo
echo "📖 Usage:"
echo "  /persona developer    - Switch to developer persona"
echo "  /persona architect    - Switch to system architect persona"  
echo "  /persona reviewer     - Switch to code reviewer persona"
echo "  /persona consultant   - Switch to technical consultant persona"
echo "  /persona clear        - Return to standard Claude mode"
echo "  /persona              - Show available personas"
echo
echo "🛠️  To create custom personas:"
echo "  1. Copy ~/.claude/personas/examples/custom-persona-template.md"
echo "  2. Edit it with your persona definition"
echo "  3. Save as ~/.claude/personas/your-persona-name.md"
echo "  4. Use /persona your-persona-name to activate"
echo
echo "📂 Configuration directory: ~/.claude/personas/"
echo "🔗 GitHub: https://github.com/m-hajisan/claude-persona-switch"
echo
echo "Happy coding with your new personas! 🚀"