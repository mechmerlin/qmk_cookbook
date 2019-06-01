# qmk_cookbook

[Chef](https://www.chef.io/) cookbook used to provision a [QMK](https://qmk.fm/) dev machine. 

## Requirements

### Platforms

- Ubuntu 16.04 LTS

### Chef

- Chef 14.0+

## Attributes

- `default['qmk']['admin_user'] = 'vagrant'`
- `default['qmk']['admin_passwd'] = 'vagrant'`
- `default['qmk']['github_user'] = 'qmk'`

## Recipes

### Configurator

`git` clones the `qmk_configurator` repo. 

**Usage:** `include_recipe 'qmk::configurator'`

### Default

default recipe that utilizes the `firmware` and `user` recipes. 

**Usage:** `include_recipe 'qmk::default'`

### Firmware

`git` clones the `qmk_firmware` repo.

**Usage:** `include_recipe 'qmk::firmware'`

### Users

Create users.

**Usage:** `include_recipe 'qmk::users'`

## Getting Started

1. Install [Vagrant](https://www.vagrantup.com/downloads.html) and [Virtualbox](https://www.virtualbox.org/wiki/Downloads) on your system. 

2. Install [Chef Workstation](https://downloads.chef.io/chef-workstation/0.2.53).

3. Download/Clone this repo and `cd` into it. 

4. On your terminal, examine the list of test kitchens that can be run by typing:

    ```
    kitchen list
    ```

    You should see output siilar to the following
 ```
    Instance             Driver   Provisioner  Verifier  Transport  Last Action  Last Error
default-ubuntu-1604  Vagrant  ChefSolo     Inspec    Ssh        Converged    <None>

```

5. Converge the selected instance by typing:

    ```
    kitchen converge default-ubuntu-1604
    ```
You may replace `default-ubuntu-1604` with your target. 

6. This should result in a VM with your selected user created and `qmk_firmware` downloaded. 

7. Run a `kitchen verify` command to check that all packages have been installed correctly.

8. Run a `kitchen login` command to log into the `VM`. The other option is to open up virtualbox and open up the newly created instance and run Ubuntu in a VM. 


