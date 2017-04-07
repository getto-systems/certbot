#!/bin/bash
certbot certonly --manual --preferred-challenges dns --config-dir $LETSENCRYPT_CONFIG --logs-dir $LETSENCRYPT_LOG --manual-auth-hook /auth.sh --manual-cleanup-hook /cleanup.sh -d $LETSENCRYPT_DOMAIN --email $LETSENCRYPT_EMAIL
