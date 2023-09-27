# Discord Stat Changer \[[readme.md by ChatGPT](https://chat.openai.com/)\]

**Disclaimer:** Using this tool may lead to your Discord account getting banned. The developer of this tool does not guarantee its safety, and it should be used at your own risk.

## Description

`discord-stat-changer` is a Lua script designed to change your Discord status using the Luvit runtime environment. The script periodically updates your status with random messages from a list, allowing you to simulate dynamic status updates on Discord.

## Requirements

- [Luvit runtime environment](https://luvit.io/)

## Setup

1. Ensure you have the Luvit runtime environment installed on your system.
2. Download the required libraries using the `setup.lua` script. This will fetch `coro-http` and `secure-socket`, which are necessary for the main script.
3. Run the setup script with the following command:

   ```sh
   luvit setup.lua
   ```

   Note: You can replace `luvit` with the correct command for running Luvit on your system.

### Auto Setup (requires [git](https://git-scm.com))

#### Windows:

```batch
:: Download Repo
git clone https://github.com/Cowrod/discord-stat-changer
cd discord-stat-changer
:: Download Luvit
PowerShell -NoProfile -ExecutionPolicy unrestricted -Command "[Net.ServicePointManager]::SecurityProtocol = 'Tls12'; iex ((new-object net.webclient).DownloadString('https://github.com/luvit/lit/raw/master/get-lit.ps1'))"
:: Download Required Libraries
luvit setup --no-lit-log --no-lit-prompt
luvit init
```

#### Linux:

```sh
git clone https://github.com/Cowrod/discord-stat-changer
cd discord-stat-changer
curl -L https://github.com/luvit/lit/raw/master/get-lit.sh | sh
./luvit setup --no-lit-log --no-lit-prompt
./luvit init
```

## How to Use

1. Ensure you have completed the setup steps mentioned above before proceeding.
2. Create a file named `token.txt` in the same directory as the main script (`init.lua`).
3. Inside `token.txt`, paste your Discord bot token. Ensure that the token is valid and belongs to a bot account.
4. Run the main script with the following command:

   ```sh
   luvit init.lua
   ```

   Note: You can replace `luvit` with the correct command for running Luvit on your system.

**Note**: You can also run "luvit init" and enter the token in the code itself instead of saving the token into a file. Don't forget to set up status messages as described below. If you are using this tool for a bot, format your input as "BOT token-here."

## Warnings

- This tool may result in your Discord account being banned due to potential "selfbotting" violations.
- Use this tool at your own risk, as the developer does not guarantee its safety or compliance with Discord's terms of service.
- This project was made for educational purposes only. The developer takes no responsibility for any actions you take with this program.

## Status Messages

By default, the script uses the following list of messages to update your Discord status randomly. You can modify this list by editing the `status.txt` file or provide your custom list in JSON format.

```json
["hello", "hi", "heya"]
```

## Important Notes

- The script will keep running indefinitely, changing your status periodically.
- The script provides real-time feedback on the number of successful status changes and failures, as well as the current token being used.

**Use this script responsibly and be aware of the potential consequences of using self-bots on Discord.**
