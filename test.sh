git config credential.helper '
    echo "username=${GITHUB_ACTOR}"
    echo "password=${SUPERFLORE_GITHUB_TOKEN}"
'