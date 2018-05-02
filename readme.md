# Tiny shell script for managing hosts

This script assumes you have 3 existing files.

- `/etc/hosts-dev` - Any local domains you use for development
- `/etc/hosts-clean` - A clean or vanilla hosts file copy from the OS
- `/etc/hosts-block` - Any domains you want to deny

You will probably want aliases like this:

```shell
alias hostsblock="sudo /usr/local/bin/hosts-helper.sh block"
alias hostsreset="sudo /usr/local/bin/hosts-helper.sh default"
```

Now you can use `hostsblock` and `hostsreset` to toggle domain denial. For me this is very helpful because I have 60k~ domains in my blocklist. If someone sends me a silly thing on Twitter I can quickly and temporarily allow it.

**Why not just use ublock origin or something then...???**
Because that only blocks domains in the browser. Hosts files block all sorts of naughty stuff in native & electron apps as well :)

Thanks to Kyle Tucker for the help with `sed`!
