import os, strformat, strutils

version = "0.1.0"
author = "Metacraft Studio"
description = "Another vim-like editor that focus on high/bare-metal performance, yet with high extendibility"
license = "MIT"
srcDir = "src"
bin = @["bin"]

proc green*(s: string): string = "\e[32m" & s & "\e[0m"
proc grey*(s: string): string = "\e[90m" & s & "\e[0m"
proc yellow*(s: string): string = "\e[33m" & s & "\e[0m"
proc red*(s: string): string = "\e[31m" & s & "\e[0m"

const entry = if paramCount() == 9: paramStr(9) else: "cli"
const captalizedEntry = entry.capitalizeAscii()
const deploymentDir = &"out/deploy/{captalizedEntry}"
const cppArgs = "-I./src/v8/v8/include"

exec "./tools/setupv8.sh"

task dev, "Run development environment":
  let runCommand = &"nim r --threads:on -d:ssl src/{entry}"
  echo (&"Running {entry} in development environment").green()
  exec runCommand
