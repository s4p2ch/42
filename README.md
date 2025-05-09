# solving some l***x issues

### copy/paste shortcuts

GNOME Terminal -> Preferences -> Shortcuts -> Edit -> Copy / Paste fields

VSCODE -> Ctrl + K Ctrl + S -> Terminal.Copy Selection / Terminal.Paste Selection



### "Authentication required"
if you see “The password you use to log in to your computer no longer matches that of your login keyring”, delete keyring files:

```rm /home/user/.local/share/keyrings/*.keyring```

"user" should be your username

after that change your pass in intra



### updating norminette

```python3 -m pip install --upgrade norminette```

# useful stuff

### link multiple gits to the repo

1. configure ~/.ssh/config file:

```bash
Host repo1
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_rsa_repo1

Host repo2
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_rsa_repo2
```

2. add git remotes using the custom hostnames defined in ssh config:

```bash
git remote add repo1 git@repo1:username/repo.git
git remote add repo2 git@repo2:username/repo.git
```

3. then push:

```bash
git push repo1 branch_name
git push repo2 branch_name
```

__=== resolving conflicts ===__

assuming your git only sees repo1, but you want to push to repo2

- check ~/.ssh/config
- update remote url:


```bash
git remote -v
```

if the url still using previous host, update it:

```bash
git remote set-url origin git@repo2:username/repo.git
```

- verify ssh:

```bash
ssh -T git@repo2
```

this should return a success message.
if  not, you may need to add your hey to ssh agent:

```bash
ssh-add ~/.ssh/id_rsa_repo2
```

- ensure correct git user config

set up yout git config globally or locally

```bash
git config user.name "yourname"
git config user.email "youremail@domain.com"
# OR
git config --local user.name "yourname"
git config --local user.email "youremail@domain.com"
```

- test the push

```bash
git push repo2 main
```