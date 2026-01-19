# Incident Report - SSH Brute Force Attempt

## Summary
Detected multiple failed SSH login attempts for root user. Successful login for user1 observed.

## Steps Taken
1. Investigated auth.log
2. Identified suspicious IP addresses
3. Locked suspicious accounts
4. Recommended password changes and fail2ban configuration

## Lessons Learned
- Always monitor auth logs
- Enforce strong passwords
- Use fail2ban for automated response

## Author
[Bellier Lorenzo]
