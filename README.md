# BetrayMe GitHub Action

This GitHub action helps you run a scan on the code for any secrets when a pull request (aka PR) is created. If it finds anything, it doesn't allow the PR to get merged. It uses [Gitleaks](https://github.com/zricethezav/gitleaks) to scan through your code and flag potential issues. 

# How to use

To use this action, simply put this block into your `.github/main.workflow` workflow file:

```
workflow "Scan for any secrets on PR" {
  on = "pull_request"
  resolves = ["BetrayMe"]
}

action "BetrayMe" {
  uses = "docker://yashints/betrayme"
}

```

# Credits

Credits goes to [Zachary Rice](https://github.com/zricethezav/gitleaks) for creating [Gitleaks](https://github.com/zricethezav/gitleaks).

----

[GNU General Public License v3.0](LICENSE)