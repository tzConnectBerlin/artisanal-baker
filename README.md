# Baking support scripts and documents.

These files are intended to help getting Tezos nodes up and running quickly. They consist of

## [Baking document](baking.md)
Outlines the steps necessary to set up a vanilla Ubuntu installation to run a Tezos node

## [Bootstrap script](bootstrap-tezos.sh)
Automates compiling a node. From the comments:
```
# Script to install Tezos. This script install dependencies and sets up a Tezos node for you.
# (c) 2020 Tz Connect GmbH.
# This code is licensed under the MIT License, https://opensource.org/licenses/MIT
#
# You may set some environment variables to change the behavior of the script. Options are
# - TEZOS_BRANCH - defaults to latest-release, which will build the latest mainnet.
# - SNAPSHOT     - will populate the new node from a snapshot file. The special value 'mainnet' causes
#                  the script to download the latest mainnet snapshot from https://github.com/Phlogi/tezos-snapshots
#                  and install that. The special value 'carthagenet' download a recent-ish snapshot from
#                  https://snapshots.tulip.tools
```
## [Security document](security.md)
Techniques for baking more securely, basic information on firewall rules, documentation and example steps for setting up remote baking, with or without a hardware ledger.

## [systemd setup script](setup-systemd.sh)
Uses the [tezos-systemd-scripts project](git@github.com:tzConnectBerlin/tezos-systemd-scripts.git) to automate startup of your newly compiled node. Uses the same arguments and the bootstrap script, for your convenience.
