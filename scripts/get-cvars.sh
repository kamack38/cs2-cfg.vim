#!/usr/bin/env bash
# requires curl, sed and htmlq
curl -s 'https://developer.valvesoftware.com/wiki/List_of_Counter-Strike_2_console_commands_and_variables' | htmlq '.standard-table tbody tr td:first-child' --text | sed '/N\/A/d'
