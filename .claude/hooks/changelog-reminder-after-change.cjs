#!/usr/bin/env node

const { execFileSync } = require("child_process");

function gitLines(args) {
  try {
    return execFileSync("git", args, {
      encoding: "utf8",
      stdio: ["ignore", "pipe", "ignore"],
    })
      .split(/\r?\n/)
      .map((line) => line.trim())
      .filter(Boolean);
  } catch {
    return [];
  }
}

const changed = new Set([
  ...gitLines(["diff", "--name-only"]),
  ...gitLines(["diff", "--cached", "--name-only"]),
  ...gitLines(["ls-files", "--others", "--exclude-standard"]),
]);

if (changed.size === 0) {
  process.exit(0);
}

const changelog = "CHANGELOG.md";
const notableChanged = [...changed].filter((file) => file !== changelog);

if (notableChanged.length === 0) {
  process.exit(0);
}

if (changed.has(changelog)) {
  process.stdout.write(
    `Changelog reminder: ${changelog} changed. Before finishing, verify ## Unreleased captures this phase and avoids duplicate bullets.\n`,
  );
} else {
  process.stdout.write(
    `Changelog reminder: review ${changelog} before finishing. Add an ## Unreleased bullet for notable code, docs, config, workflow, or public behavior changes.\n`,
  );
}
