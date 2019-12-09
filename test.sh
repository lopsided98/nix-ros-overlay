git config credential.helper '!
  f() {
    echo "username=${GITHUB_ACTOR}"
    echo "password=${SUPERFLORE_GITHUB_TOKEN}"
  }; f'