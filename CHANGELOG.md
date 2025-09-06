# Changelog

All notable changes to Claude Persona Switch will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.9.0] - 2025-09-06

### Added
- Enhanced persona listing with explanatory text
- Usage instructions in persona command output
- Improved dynamic persona detection using `find` command

### Changed
- Replaced complex bash loops with simpler `find`-based approach
- Updated persona listing format for better readability
- Improved error handling for missing persona files

### Fixed  
- Resolved issues with persona detection in Claude Code environment
- Fixed problems with glob pattern expansion in slash commands
- Corrected persona listing to show all available personas including custom ones

## [1.1.0] - 2025-09-06

### Added
- Dynamic persona listing functionality  
- Custom persona automatic detection
- Improved persona switching interface
- Enhanced error messages with available persona lists
- Project documentation (CLAUDE.md)
- Claude Code restart instructions in README

### Changed
- Migrated from hardcoded persona lists to dynamic file-based detection
- Converted all interface messages to English for consistency
- Implemented "Switch to XX" format for persona descriptions
- Removed file content parsing for better performance and reliability

### Fixed
- Persona command now shows all available personas including custom ones
- Resolved caching issues with persona command updates
- Fixed installation script to preserve user customizations

## [1.0.0] - 2025-09-05

### Added
- Initial release of Claude Persona Switch
- Core slash command system (`/persona`)
- Four default personas:
  - 🧑‍💻 Senior Software Developer
  - 🏗️ Senior System Architect  
  - 🔍 Senior Code Reviewer
  - 💼 Senior Technical Consultant
- Custom persona creation system with template
- Installation and uninstallation scripts
- Comprehensive documentation and examples
- MIT License

### Features
- Seamless persona switching with `/persona [name]`
- Clear persona with `/persona clear` 
- Help and status with `/persona`
- Automatic installation to `~/.claude/` directory
- Preservation of custom personas during updates
- Cross-platform support (macOS, Linux, WSL)

### Documentation
- Complete README with installation and usage instructions
- Custom persona template with detailed guidelines
- Example personas for different specializations
- Installation and contribution guidelines