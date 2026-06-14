#!/usr/bin/env sh
set -eu

changed="$(git diff --name-only 2>/dev/null || true)"

printf '%s' "$changed" | grep -Eq '^frontend/' && {
  printf 'Test reminder: frontend changed. Run the smallest relevant check, such as npm test or npm run lint, once the Angular app exists.\n'
}

printf '%s' "$changed" | grep -Eq '^backend/' && {
  printf 'Test reminder: backend changed. Run ./mvnw test or mvn test once the Spring Boot project exists.\n'
}

printf '%s' "$changed" | grep -Eq '^ai-service/' && {
  printf 'Test reminder: ai-service changed. Run the smallest relevant Python or service test once code exists.\n'
}

exit 0
