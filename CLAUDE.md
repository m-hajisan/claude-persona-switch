# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Claude Persona Switch is a custom slash command system for Claude Code that allows users to switch between specialized AI personas. Each persona provides domain-specific expertise with unique communication styles, priorities, and constraints.

## Architecture

### Core Components

1. **Slash Command System** (`commands/persona.md`)
   - Main entry point for persona switching
   - Handles persona loading, clearing, and status display
   - Located at `~/.claude/commands/persona.md` after installation

2. **Persona Definitions** (`personas/*.md`)
   - Individual persona configurations in Markdown format
   - Each defines role, expertise, communication style, and constraints
   - Installed to `~/.claude/personas/` directory

3. **Installation System** (`install.sh` / `uninstall.sh`)
   - Automated setup and removal scripts
   - Preserves existing customizations during updates
   - Validates Claude Code installation before proceeding

### File Structure

```
./
├── commands/
│   └── persona.md              # Main slash command implementation
├── personas/                   # Default persona definitions
│   ├── developer.md           # Senior software developer persona
│   ├── architect.md           # System architecture specialist
│   ├── reviewer.md            # Code review specialist  
│   └── consultant.md          # Technical consulting specialist
├── examples/
│   └── custom-persona-template.md  # Template for creating new personas
├── future-support/            # Planned enhancements
├── install.sh                 # Installation script
├── uninstall.sh              # Removal script
└── README.md                 # User documentation
```

## Common Commands

### Installation
```bash
# Quick install
curl -sSL https://raw.githubusercontent.com/m-hajisan/claude-persona-switch/main/install.sh | bash

# Manual install
./install.sh

# Uninstall (preserves custom personas)
./uninstall.sh
```

### Usage
```bash
/persona developer     # Activate developer persona
/persona architect     # Activate system architect persona
/persona reviewer      # Activate code reviewer persona
/persona consultant    # Activate technical consultant persona
/persona clear         # Return to standard Claude mode
/persona              # Show available personas and current status
```

### Development
```bash
# Test installation locally
./install.sh

# Test personas after installation
/persona developer

# Create custom persona
cp ~/.claude/personas/examples/custom-persona-template.md ~/.claude/personas/my-persona.md
# Edit the file, then activate with /persona my-persona
```

## Persona Architecture

Each persona follows a structured format:

### Required Sections
- **Header**: Title and activation message with emoji
- **Role & Expertise**: Experience level, specializations, technologies
- **Response Style**: How the persona approaches problems and communication
- **Priorities**: Ordered list of what matters most to this persona
- **Constraints**: Boundaries and limitations

### Optional Sections  
- **Communication Style**: Tone and interaction preferences
- **Methodology**: Step-by-step approaches or frameworks
- **Deliverable Formats**: Expected output structures

## Installation Requirements

- Claude Code must be installed and configured
- Unix-like system (macOS, Linux, WSL)
- Bash shell environment
- Write access to `~/.claude/` directory

## Key Implementation Details

### Command Processing
The `/persona` command uses argument-based routing:
- No args: Show help and status
- `clear`: Reset to standard mode  
- `[persona-name]`: Load persona from `~/.claude/personas/[name].md`

### File Management
- Installation preserves existing persona customizations
- Uses safe copying to avoid overwriting user modifications
- Maintains examples directory for reference templates

### Error Handling
- Validates Claude Code installation before proceeding
- Provides clear feedback for missing persona files
- Lists available personas when invalid names are used

## Customization Guidelines

### Creating New Personas
1. Copy the template: `~/.claude/personas/examples/custom-persona-template.md`
2. Replace bracketed placeholders with specific content
3. Save as `~/.claude/personas/[persona-name].md`
4. Test with `/persona [persona-name]`

### Best Practices
- Define specific expertise areas and experience levels
- Set clear boundaries and constraints
- Include concrete examples of response styles
- Keep personas focused and maintainable
- Use consistent formatting across all persona files

## Future Enhancements

The `future-support/` directory contains planned features like:
- Context persistence across sessions  
- Team collaboration features
- Advanced persona templating
- Integration with other Claude Code extensions