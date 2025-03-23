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
