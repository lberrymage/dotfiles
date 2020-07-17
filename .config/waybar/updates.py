#!/usr/bin/env python3
#
# Prints available updates on Arch Linux, including AUR updates
# Uses yay as querying agent

from subprocess import check_output

def num_updates():
    try:
        output = check_output(['yay', '-Qqu']).decode('utf-8')
    except subprocess.CalledProcessError as exc:
        return []

    return len(output.split('\n')) - 1

if __name__ == '__main__':
    update_count = num_updates()
    if update_count == 0:
        status = 'System up to date'
    elif update_count == 1:
        status = str(update_count) + ' update available'
    else:
        status = str(update_count) + ' updates available'

    print(status)
