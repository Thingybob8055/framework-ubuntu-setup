# Ubuntu Script Framework 12th Gen

A quick script I made (very dervived from Frameworks guide, basically the same) for myself to get Ubuntu running on the framework. Intended for purely personal use.

But if anyone notices an issue please raise an issue post, maybe it can be useful for others as well.

Furthermore, let me know of if there can be any additions. I will probably update it for future Ubuntu versions if need be.

## What to do when it asks for PAM Update

(Image taken from Google Image lol)

![alt text](/images/pam.png)

- Up and Down arrow to select
- Space to check `fingerprint authentication`
- Tab to select `ok` and then space again to exit

The script will automatically cause a reboot after this step is done.

## To use:

Run the following one by one:

```sh
git clone https://github.com/Thingybob8055/framework-ubuntu-setup.git

cd  framework-ubuntu-setup

chmod +x fw-ubuntu-2204.sh

./fw-ubuntu-2204.sh
```

Enter password where necessary.