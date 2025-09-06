# Claude Persona Switch 🎭

**Switch between different Claude personas to get specialized responses for development, architecture, code review, and technical consulting.**

Claude Persona Switch is a custom slash command system for [Claude Code](https://claude.ai/code) that allows you to instantly switch between different specialized personas, each with their own expertise, communication style, and focus areas.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Claude Code](https://img.shields.io/badge/Claude-Code-blue.svg)](https://claude.ai/code)

## ✨ Features

- **🧑‍💻 Developer Persona**: Senior software developer with 8+ years of experience
- **🏗️ System Architect**: Enterprise-grade system design and architecture expertise  
- **🔍 Code Reviewer**: Comprehensive code quality and security analysis
- **💼 Technical Consultant**: Strategic technology consulting and business alignment
- **🎛️ Easy Switching**: Simple `/persona [name]` command to switch contexts
- **🔄 Reset Function**: `/persona clear` to return to standard Claude mode
- **🛠️ Customizable**: Add your own personas with simple Markdown files

## 🚀 Quick Install

```bash
curl -sSL https://raw.githubusercontent.com/[username]/claude-persona-switch/main/install.sh | bash
```

### Manual Installation

```bash
git clone https://github.com/[username]/claude-persona-switch.git
cd claude-persona-switch
./install.sh
```

## 📖 Usage

### Basic Commands

```bash
/persona developer     # Switch to developer persona
/persona architect     # Switch to system architect persona  
/persona reviewer      # Switch to code reviewer persona
/persona consultant    # Switch to technical consultant persona
/persona clear         # Return to standard Claude mode
/persona               # Show available personas and status
```

### Example Interaction

```bash
/persona developer
```

> 🧑‍💻 **Persona Activated: Senior Software Developer**
> 
> I am now operating as an experienced software developer with deep technical expertise across multiple programming languages and development methodologies.
> 
> Ready to dive into some serious development work! What coding challenge shall we tackle?

## 🎯 Available Personas

### 🧑‍💻 Developer
- **Focus**: Clean, efficient, maintainable code
- **Experience**: 8+ years in software development  
- **Specialties**: Full-stack development, system design, performance optimization
- **Style**: Code-first approach with working examples

### 🏗️ System Architect  
- **Focus**: High-level system design and architectural decisions
- **Experience**: 12+ years in system architecture
- **Specialties**: Microservices, distributed systems, cloud architecture
- **Style**: Strategic thinking with visual diagrams

### 🔍 Code Reviewer
- **Focus**: Comprehensive code quality and security analysis
- **Experience**: 10+ years in code review and quality engineering
- **Specialties**: Security auditing, performance optimization, maintainability
- **Style**: Systematic analysis with prioritized feedback

### 💼 Technical Consultant
- **Focus**: Strategic technology consulting and business alignment
- **Experience**: 15+ years across multiple industries
- **Specialties**: Digital transformation, technology strategy, ROI analysis
- **Style**: Business-first perspective with executive-ready communication

## 🛠️ Creating Custom Personas

1. **Copy the template**:
   ```bash
   cp ~/.claude/personas/examples/custom-persona-template.md ~/.claude/personas/my-persona.md
   ```

2. **Edit your persona**:
   ```bash
   # Edit the file with your persona definition
   vim ~/.claude/personas/my-persona.md
   ```

3. **Activate your persona**:
   ```bash
   /persona my-persona
   ```

4. **Restart Claude Code** (if needed):
   ```bash
   # If your new persona doesn't appear in the list, restart Claude Code
   # This ensures the command cache is refreshed
   ```

### Custom Persona Structure

```markdown
# My Custom Persona

🎯 **Persona Activated: [Your Persona Title]**

Brief description of your persona...

## My Role & Expertise
- Primary focus and responsibilities
- Experience level and background
- Key specializations

## How I Will Respond
- Communication style
- Approach to problem-solving
- What I prioritize in responses

## My Constraints
- What I avoid or consider carefully
- Limitations and boundaries
```

## 📁 File Structure

```
~/.claude/
├── commands/
│   └── persona.md              # Main slash command
└── personas/                   # Persona definitions
    ├── developer.md            # Developer persona
    ├── architect.md            # System architect persona
    ├── reviewer.md             # Code reviewer persona
    ├── consultant.md           # Technical consultant persona
    └── examples/
        └── custom-persona-template.md
```

## 🔧 Requirements

- [Claude Code](https://claude.ai/code) installed and configured
- Unix-like system (macOS, Linux, WSL)
- Bash shell

## 📚 Advanced Usage

### Context Switching Workflow

```bash
# Start with architecture planning
/persona architect
# Design the system architecture...

# Switch to development
/persona developer  
# Implement the code...

# Get a code review
/persona reviewer
# Review and improve code quality...

# Business consultation
/persona consultant
# Align technical decisions with business goals...

# Return to standard mode
/persona clear
```

### Team Collaboration

Share custom personas with your team by committing them to your project:

```bash
# Create project-specific personas
mkdir -p .claude/commands
cp ~/.claude/commands/persona.md .claude/commands/

mkdir -p .claude/personas  
cp ~/.claude/personas/my-team-persona.md .claude/personas/
```

## 🚮 Uninstallation

```bash
curl -sSL https://raw.githubusercontent.com/[username]/claude-persona-switch/main/uninstall.sh | bash
```

The uninstaller preserves any custom personas you've created.

## 🤝 Contributing

We welcome contributions! Here are ways you can help:

- **New Personas**: Submit personas for different specializations
- **Improvements**: Enhance existing personas or the core system  
- **Documentation**: Improve guides and examples
- **Bug Reports**: Report issues and edge cases

### Development Setup

```bash
git clone https://github.com/[username]/claude-persona-switch.git
cd claude-persona-switch

# Test installation locally
./install.sh

# Test the personas
/persona developer
```

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Built for the [Claude Code](https://claude.ai/code) community
- Inspired by the growing ecosystem of Claude Code custom commands
- Thanks to all contributors and persona creators

## 📞 Support

- **Issues**: [GitHub Issues](https://github.com/[username]/claude-persona-switch/issues)
- **Discussions**: [GitHub Discussions](https://github.com/[username]/claude-persona-switch/discussions)
- **Documentation**: [Project Wiki](https://github.com/[username]/claude-persona-switch/wiki)

---

**Made with ❤️ for the Claude Code community**

Transform your Claude interactions with specialized expertise at your fingertips! 🚀