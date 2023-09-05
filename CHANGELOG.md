# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

<!-- markdownlint-configure-file { "MD024": { "allow_different_nesting": true } } -->

## [3.1.0] 2023-09-05

### Changed

- Reafcto script to merge Barcus work.
- Rename the `docker-compose.*.yml` files to `compose.*.yaml`

### Fixed

- Exim config with updated SMTPd image

## [3.0.0] 2022-07-15

### Added

- Add [Dependabot](https://github.com/dependabot) in CI.

### Changed

- Upgrade to [Træfik](https://traefik.io/) [v2](https://doc.traefik.io/traefik/migration/v1-to-v2/) syntax.

## [2.0.0] 2022-06-09

### Added

- Add API service
- Script to merge Barcus work

### Changed

- Upgrade Bareos to the version 21

## [1.1.1] 2022-06-09

### Added

- This CHANGELOG file

### Fixed

- Add Traefik mention on README

### Replaced

- Replace CI markdown check

## [1.1.0] 2022-03-31

### Changed

- Replace namshi/smtp image by ixdotai/smtp

## [1.0.1] 2022-03-27

### Fixed

- Error message if the environment variables are set twice

## [1.0.0] 2022-03-25

### Added

- Use secrets (user and password) for SMTP service

### Removed

- Remove SMTP user and password from environment variables

## [0.2.0] 2022-03-16

### Added

- Bareos database name environment variable

### Fixed

- Fix SMTP_ALIASES environment variable syntax

## [0.1.0] 2022-03-04

### Added

- Docker-compose setup for starting Bareos with Træfik

[3.1.0]: https://github.com/solution-libre/docker-bareos/compare/v3.0.0...v3.1.0
[3.0.0]: https://github.com/solution-libre/docker-bareos/compare/v2.0.0...v3.0.0
[2.0.0]: https://github.com/solution-libre/docker-bareos/compare/v1.1.1...v2.0.0
[1.1.1]: https://github.com/solution-libre/docker-bareos/compare/v1.1.0...v1.1.1
[1.1.0]: https://github.com/solution-libre/docker-bareos/compare/v1.0.1...v1.1.0
[1.0.1]: https://github.com/solution-libre/docker-bareos/compare/v1.0.0...v1.0.1
[1.0.0]: https://github.com/solution-libre/docker-bareos/compare/v0.2.0...v1.0.0
[0.2.0]: https://github.com/solution-libre/docker-bareos/compare/v0.1.0...v0.2.0
[0.1.0]: https://github.com/solution-libre/docker-bareos/releases/tag/v0.1.0
