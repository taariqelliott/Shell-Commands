# Weather Command-Line Tool

This repository contains a simple shell script that fetches and displays the current weather for a given zip code using the [wttr.in](https://wttr.in) service.

## Prerequisites

- curl should be installed on your system.
- zsh or bash should be your default shell.

## Setup Instructions

1. **Download the getWeather.sh script from the repository.**

2. **Make the script executable:**
   chmod +x /path/to/downloaded/getWeather.sh

3. **Add an alias to your shell configuration file:**
   Open your `.zshrc` or `.bashrc` file in a text editor:
   nano ~/.zshrc # For zsh
   # or
   nano ~/.bashrc # For bash

   Add the following line at the end of the file:
   alias getWeather="/path/to/downloaded/getWeather.sh"\
   **Example path:** \
   ***alias getWeather="/Users/timcook/Documents/shellScripts/getWeather.sh"***

4. **Restart your shell:**
   source ~/.zshrc # For zsh
   # or
   source ~/.bashrc # For bash

5. **Run the script with a zip code of your choice in a new terminal window:**\
   getWeather 90001\
   |\
   |\
   |\
   "The weather for 90001: 90001: ☀️   +88°F"

## Troubleshooting

* Ensure the path to `getWeather.sh` in your `.zshrc` or `.bashrc` file is correct (spaces can cause issues). Use `\` to escape spaces or paste your path into ChatGPT with the template and use the prompt "spaces in my file path are causing issues" to get the correct file path. Then save with `Ctrl + X`, then `Y`, then `Enter`. Followed by `source ~/.bashrc` (for Bash) or `source ~/.zshrc` (for Zsh), and finally run `getWeather 90001`.

* Make sure `curl` is installed and available in your system.


## Extras

**Change the format number in the script!**\
WEATHER_DATA=$(curl -s "wttr.in/$1") will give you a visual display with animations sometimes\
WEATHER_DATA=$(curl -s "wttr.in/$1?format=2") will give you extra emojis!
