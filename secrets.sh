#!/bin/bash

# Define secret patterns (can add more patterns as needed)
patterns=(
    "AKIA[A-Z0-9]{16}"                      # AWS Access Key ID (AKIA...)
    "password"                               # The word "password"
    "id"                                     # The word "id" (may need more specific patterns in practice)
    "sk_live_[A-Za-z0-9]{32}"                # Stripe live secret key (sk_live_ followed by 32 alphanumeric characters)
    "pk_test_[A-Za-z0-9]{32}"                # Stripe test public key (pk_test_ followed by 32 alphanumeric characters)
    "secret_key=[A-Za-z0-9]+"                # General secret key pattern (secret_key= followed by alphanumeric characters)
    "api_key=[A-Za-z0-9]+"                   # Generic API key pattern (api_key= followed by alphanumeric characters)
    "API_KEY=[A-Za-z0-9]+"                   # API_KEY in uppercase
    "PRIVATE_KEY=[A-Za-z0-9]+"               # PRIVATE_KEY in uppercase
    "client_secret=[A-Za-z0-9]+"             # Generic client secret pattern
    "oauth_token=[A-Za-z0-9]+"               # OAuth token pattern
    "AWS_SECRET_ACCESS_KEY=[A-Za-z0-9/+=]+"  # AWS secret access key
    "google_api_key=[A-Za-z0-9]+"            # Google API key
    "db_password=[A-Za-z0-9]+"               # Database password pattern
    "access_token=[A-Za-z0-9]+"              # Access token pattern
    "session_key=[A-Za-z0-9]+"               # Session key pattern
    "Bearer [A-Za-z0-9\\-_]+"                # Bearer token (for authentication)
    "x-api-key=[A-Za-z0-9]+"                 # API key in header with x-api-key= pattern
    "auth_token=[A-Za-z0-9]+"                # Authentication token
    "client_id=[A-Za-z0-9]+"                 # Client ID pattern
    "client_secret=[A-Za-z0-9]+"             # Client Secret pattern (e.g., OAuth)
    "csrf_token=[A-Za-z0-9]+"                # CSRF token pattern
    "private_key=[A-Za-z0-9]+"               # Private key pattern (lowercase)
    "pfx_password=[A-Za-z0-9]+"              # PFX certificate password pattern
    "db_url=[A-Za-z0-9]+"                    # Database connection URL pattern
    "mysql://[A-Za-z0-9]+"                   # MySQL connection string pattern
    "mongodb://[A-Za-z0-9]+"                 # MongoDB connection string pattern
    "postgres://[A-Za-z0-9]+"                # PostgreSQL connection string pattern
    "redis://[A-Za-z0-9]+"                   # Redis connection string pattern
    "smtp_password=[A-Za-z0-9]+"             # SMTP password pattern
    "api_secret=[A-Za-z0-9]+"                # Generic API secret pattern
    "app_secret=[A-Za-z0-9]+"                # App secret pattern
)

# Search for patterns in your repository's files
for pattern in "${patterns[@]}"; do
    echo "Searching for $pattern..."
    grep -r -P "$pattern" .
done
