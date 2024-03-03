# Personal Dotenv Files
I'm tired of re-provisioning my computer over and over. This is my attempt at collecting my apps and configs in one place. The goal is to reduce the time it takes to spin up a new machine.

# New MacOS Setup

1. Install Xcode CLI tooling

```sh
xcode-select --install
```

2. Install [Homebrew](https://brew.sh/) (2024-02)

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

3. Add Homebrew to `.zprofile`

```sh
(echo; echo 'eval "$(/opt/homebrew/bin/brew shell env)"') >> ~/.zprofile && eval "$(/opt/homebrew/bin/brew shellenv)"
```

4. Install [Ansible](https://www.ansible.com/)

```sh
brew install ansible
```

5. Run the playbook

```sh
ansible-playbook playbooks/provision-mac-os.yml --ask-become-pass
```
