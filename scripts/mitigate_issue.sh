#!/bin/bash
# Lock suspicious user after multiple failed logins

USER="attacker"
passwd -l $USER
echo "User $USER locked to prevent further intrusion"
