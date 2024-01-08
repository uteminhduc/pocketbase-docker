# pocketbase-docker

## Environment variables
Testest on Portainer

These values will be used as substitutions in the stack file. To reference the `.env` file in your compose file, use `stack.env`
```env
GITHUB_USERNAME=github_username
GITHUB_ACCESS_TOKEN=gh_token
GITHUB_REPOSITORY=your_repository

PB_VERSION=0.20.5
PB_PORT=56448

# /home/docker/PB_LOCATION
PB_LOCATION=location
ORIGINS=http://localhost:3005,https://yourdomain.com
# Create a new environment variable and set a random 32 characters string as its value
PB_ENCRYPTION_KEY=qsvm7Sh1ntwYmmwdTlSDHVDUvy0fGEg4
AUTOMIGRATION=0
```

## Development on local
1. Download PocketBase (https://github.com/pocketbase/pocketbase/releases)
2. Once you've extracted the archive, you could start the application by running `./pocketbase serve` in the extracted directory. (https://pocketbase.io/docs/)
3. Develop with `pb_hooks`(https://pocketbase.io/docs/js-overview/), `pb_public`, `pb_migrations`

## Production

### Stack on Portainer

1. Copy `.env` and set name `stack.env`
2. Change `stack.env`
3. `entrypoint.sh` will pull private/public repo and copy `pb_hooks`, `pb_public`, `pb_migrations` to `pb` before server running.
4. Server will run at: `http://yourip:${port}/_`

> [!WARNING]
> All applied migration filenames are stored in the internal `pb_migrations` table
> https://pocketbase.io/docs/js-migrations/