# pocketbase-docker

## Environment variables
These values will be used as substitutions in the stack file. To reference the `.env` file in your compose file, use `stack.env`
```env
PB_VERSION=0.20.5
PB_PORT=56448

# /home/docker/PB_LOCATION
PB_LOCATION=location
ORIGINS=http://localhost:3005,https://yourdomain.com
# Create a new environment variable and set a random 32 characters string as its value
PB_ENCRYPTION_KEY=qsvm7Sh1ntwYmmwdTlSDHVDUvy0fGEg4
AUTOMIGRATION=0
```