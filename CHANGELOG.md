# qmk_cookbook CHANGELOG

This file is used to list changes made in each version of the qmk_cookbook cookbook.

## [0.3.0] - 2019-03-23

### Added
- Introduce new resource called `qmk_repo` to assist in repo cloning. 
- Added dependency on `chef-sugar`.
- Added new attribute for install location.
- Added new recipe for `qmk_configurator`.
- Chef 15 license acceptance

### Changed
- Change some if-else statements to ternary statements. 

### Removed
- `directories` recipe removed and included in `firmware` recipe instead. 

## [0.2.1] - 2019-03-01

### Fixed
- Change login user to `vagrant` to make it easier to create firmware files without logging into another user. 
- Get rid of execute statement to run `qmk_install.sh` and just use `apt_package` resource. 

## [0.2.0] - 2019-02-10

### Added
- `users` recipe for creating an ubuntu user.
- `directories` recipe for creating a the necessary directories associated with a user. 
- `firmware` recipe used to clone qmk_firmware from your github account or qmk direct. 
- Integration test for packages installed by the `.qmk_install` script.
- Latent macOS support. 

## [0.1.0] - 2018-10-04

Initial release.

