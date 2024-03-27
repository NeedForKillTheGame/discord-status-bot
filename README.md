# Discord Status Bot

The script updates channels #nfkplanet and #donate on [NFK Community Discord server](https://needforkill.ru/discord).

## Docker installation

0. Install docker on your system

1. Build the image
```bash
docker build -t local/discord-status-bot .
```
2. Rename `config.php.example` to `config.php`

3. Set `discord_token` inside config

4. Run the image
```bash
docker run -v <path_to_config.php>:/app/config.php:ro [ **-e** *option=value*] local/discord-status-bot
```
Available options are:\
**UPDATE_PERIOD** — How often to run the scripts. Beware of discord API limits (default: 60)\
**PLANET_ENABLED** — Enable updating #nfkplanet channel (default: 1)\
**DONATE_ENABLED** — Enable updating #donate channel (default: 0)
