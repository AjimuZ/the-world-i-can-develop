#!/usr/bin/env node

const fs = require("fs");

const payload = fs.readFileSync(0, "utf8");
let commandText = payload;

try {
  const input = JSON.parse(payload);
  commandText = input?.tool_input?.command ?? input?.command ?? "";
} catch {
  // Fall back to scanning the raw payload if Claude Code changes the envelope.
}

const normalizedCommand = String(commandText).replace(/[\r\n\t]+/g, " ");
const gitWritePattern =
  /(^|[;&|()\s])git(?:\s+(?:(?:-C|-c|--git-dir|--work-tree|--namespace|--exec-path|--config-env)(?:=|\s+)[^;&|()\s]+|--(?:no-pager|paginate|literal-pathspecs|glob-pathspecs|noglob-pathspecs|icase-pathspecs)))*\s+(commit|push)(?:\s|$)/i;

if (gitWritePattern.test(normalizedCommand)) {
  process.stdout.write(
    JSON.stringify(
      {
        hookSpecificOutput: {
          hookEventName: "PreToolUse",
          permissionDecision: "ask",
          permissionDecisionReason:
            "git commit and git push require explicit manual approval.",
        },
      },
      null,
      2,
    ) + "\n",
  );
}
