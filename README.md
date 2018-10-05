# qmk_cookbook

[Chef](https://www.chef.io/) cookbook used to provision a [QMK](https://qmk.fm/) dev machine. 

## Getting Started

1. Install [Vagrant](https://www.vagrantup.com/downloads.html) and [Virtualbox](https://www.virtualbox.org/wiki/Downloads) on your system. 

2. Install [ChefDK](https://downloads.chef.io/chefdk/3.3.23).

3. Examine the list of test kitchens that can be run.

    ```
    kitchen list
    ```

    You should see output siilar to the following

    ```
    Instance             Driver   Provisioner  Verifier  Transport  Last Action  Last Error
default-ubuntu-1604  Vagrant  ChefSolo     Inspec    Ssh        Converged    <None>
    ```

4. Converge the selected instance.

    ```
    kitchen converge default-ubuntu-1604
    ```

5. This should result in a VM with your selected user created and `qmk_firmware` downloaded. 


