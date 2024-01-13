# Automatic Brightness Adjustment Script

## Overview
This project contains a simple bash script that automatically adjusts the brightness of your monitor based on the time of day. It's designed to run on a Linux system with `ddcutil` installed, making it perfect for environments like Ubuntu, in the case you can`t controll the brightness of your monitor

## Prerequisites
- Linux operating system (Tested on Ubuntu)
- `ddcutil` installed and configured to adjust monitor brightness without requiring sudo password

## Installation
1. Clone this repository or download the script to your local machine.
2. Place the script in a suitable directory, for example, `~/scripts/`.

    ```bash
    mkdir ~/scripts
    mv /path/to/adjust_brightness.sh ~/scripts/
    ```

3. Make sure the script is executable:

    ```bash
    chmod +x ~/scripts/adjust_brightness.sh
    ```

4. Edit your crontab to run the script hourly:

    ```bash
    crontab -e
    ```

    Add the following line:

    ```
    0 * * * * /home/yourusername/scripts/adjust_brightness.sh
    ```

## Usage
Once installed, the script runs automatically every hour, adjusting your monitor's brightness according to predefined settings. The brightness levels and times are set in the script and can be modified as needed.

## Customization
You can customize the brightness levels and times directly in the script. Open `adjust_brightness.sh` in your favorite text editor and adjust the values in the conditional statements.

## Contributing
Feel free to fork this project and submit pull requests with any enhancements.

## License
[MIT License](LICENSE)

## Author
- Yuri

