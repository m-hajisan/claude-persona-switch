# Contributing to Claude Persona Switch

Thank you for your interest in contributing to Claude Persona Switch! We welcome contributions from the community.

## 🤝 How to Contribute

### Reporting Bugs

1. **Search existing issues** to avoid duplicates
2. **Use the bug report template** when creating a new issue
3. **Provide clear reproduction steps** and expected vs actual behavior
4. **Include your system information** (OS, Claude Code version)

### Suggesting Features

1. **Check existing feature requests** to avoid duplicates  
2. **Use the feature request template** 
3. **Explain the use case** and why this would be valuable
4. **Consider backward compatibility** implications

### Contributing Code

#### Setting Up Development Environment

1. **Fork the repository**
2. **Clone your fork**:
   ```bash
   git clone https://github.com/[your-username]/claude-persona-switch.git
   cd claude-persona-switch
   ```
3. **Test the installation**:
   ```bash
   ./install.sh
   /persona
   ```

#### Making Changes

1. **Create a feature branch**:
   ```bash
   git checkout -b feature/your-feature-name
   ```
2. **Make your changes** following our coding standards
3. **Test your changes thoroughly**
4. **Update documentation** if needed

#### Submitting Pull Requests

1. **Ensure your branch is up to date** with main
2. **Run tests** and verify functionality
3. **Use clear commit messages**
4. **Fill out the pull request template**
5. **Link related issues** in your PR description

## 🎭 Contributing New Personas

We encourage community contributions of new personas! Here's how:

### Creating a New Persona

1. **Copy the template**:
   ```bash
   cp examples/custom-persona-template.md personas/your-persona-name.md
   ```

2. **Replace all bracketed placeholders** with your content:
   - `[Your Persona Title Here]` → Actual persona title
   - `[Experience Level]` → e.g., "5+ years", "Senior level"
   - `[Specializations]` → List your key areas

3. **Follow the structure**:
   - Clear role definition and expertise
   - Specific response style and priorities  
   - Well-defined constraints and boundaries
   - Engaging call-to-action

### Persona Quality Guidelines

#### Required Elements
- **Unique value proposition** - What makes this persona different?
- **Specific expertise areas** - Not just generic "developer"
- **Clear communication style** - How does it respond differently?
- **Practical constraints** - What it avoids or considers carefully

#### Best Practices
- **Be specific** rather than generic
- **Include concrete examples** of how you'll respond
- **Define clear boundaries** about what you will/won't do
- **Make it actionable** - users should know what to expect
- **Keep it maintainable** - avoid overly complex personas

#### Examples of Good Personas
- **DevOps Engineer** - Infrastructure, CI/CD, monitoring focus
- **UX Designer** - User experience, design systems, usability
- **Security Engineer** - Threat modeling, compliance, auditing
- **Data Scientist** - Analytics, ML, statistical analysis

### Persona Review Process

1. **Community review** - Others will test and provide feedback
2. **[IT Komons Inc.](https://it-komons.jp) approval** - Final review for quality and uniqueness  
3. **Documentation update** - Addition to README if accepted

## 📝 Coding Standards

### Shell Scripts
- Use `#!/bin/bash` shebang
- Include error handling with `set -e`  
- Add descriptive comments for complex logic
- Test on multiple systems (macOS, Linux)

### Markdown Files
- Use consistent heading levels
- Include code blocks with language specification
- Keep line length reasonable (80-100 characters)
- Use emoji sparingly and consistently

### Commit Messages
Follow conventional commits format:
```
type(scope): description

- feat: new feature
- fix: bug fix  
- docs: documentation changes
- refactor: code refactoring
- test: adding tests
```

## 🔍 Testing

### Manual Testing Checklist
- [ ] Installation works on fresh system
- [ ] All default personas load correctly
- [ ] Custom personas can be created and used
- [ ] `/persona clear` resets properly
- [ ] Uninstallation removes files correctly
- [ ] No errors in persona listing

### System Compatibility
Test on:
- macOS (primary platform)
- Linux distributions  
- WSL (Windows Subsystem for Linux)

## 📞 Getting Help

- **Questions**: Open a discussion in GitHub Discussions
- **Bugs**: Create an issue with the bug report template  
- **Features**: Create an issue with the feature request template
- **Contributing**: Ask in discussions or comment on relevant issues

## 📄 Code of Conduct

- **Be respectful** and inclusive in all interactions
- **Provide constructive feedback** when reviewing contributions
- **Help newcomers** get started with contributing
- **Focus on the contribution**, not the contributor
- **Assume positive intent** in discussions

## 🎯 Priorities

We're particularly interested in:

1. **New specialized personas** for different domains
2. **Installation improvements** for better cross-platform support  
3. **Documentation enhancements** and examples
4. **Bug fixes** and stability improvements
5. **Performance optimizations**

Thank you for contributing to Claude Persona Switch! 🚀