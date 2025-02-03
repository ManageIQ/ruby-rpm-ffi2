# Change Log

All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased]

## [0.0.5] - 2016-07-09
### Added
- Add rake for travis
- Search for librpm.so.3 too

### Changed
- Moved to minitest
- ruby 1.9.x not supported anymore

## [0.0.4] - 2013-10-24
### Fixed
- Bugfix: too many open files on transaction with blocks
- Fixing the access to FileAttrs and FileState constants from RPM::File

## [0.0.3] - 2012-02-23
### Changed
- RPM::FFI module is now RPM::C

### Added
- implement Trasaction#commit, Trasaction#install, Trasaction#upgrade,

## [0.0.2] - 2012-01-04
### Added
- Add MatchIterator support and expose it in Transaction
- Implement transaction callback
- Implemented RPM::File
- implement RPM#[]=

### Changed
- Renamed RPM::Header to RPM::Package

### Fixed
- Fix name not getting set. Better use headerPutString
- Fix RPM#[]

[Unreleased]: https://github.com/ManageIQ/ruby-rpm-ffi2/compare/v0.0.5...HEAD
[0.0.5]: https://github.com/ManageIQ/ruby-rpm-ffi2/compare/v0.0.4...v0.0.5
[0.0.4]: https://github.com/ManageIQ/ruby-rpm-ffi2/compare/v0.0.3...v0.0.4
[0.0.3]: https://github.com/ManageIQ/ruby-rpm-ffi2/compare/v0.0.2...v0.0.3
[0.0.2]: https://github.com/ManageIQ/ruby-rpm-ffi2/compare/aa5c84efc5...v0.0.2
