# qmk_repo

Use the **qmk_repo** resource to clone qmk repositories. 

Syntax
------

The full syntax for all of the properties available to the **qmk_repo** resource
is:

```ruby
qmk_repo 'repo_name' do
  repo_name                      String # name of the qmk repo
  github_user                    String # name of the github user that owns the qmk fork
  install_dir                    String # location of where to clone the qmk repository
end
```

Actions
-------

`:create`

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Create a qmk repository as specified by
the `qmk_repo` property. This is the default action.

Examples
--------

**Clone a qmk repository**

```ruby
qmk_repo 'qmk_firmware' do
  github_user 'qmk'
  repo_name 'qmk_firmware'
  install_dir '/home/mechmerlin/documents/qmk_firmware'
  action :create
end
```
