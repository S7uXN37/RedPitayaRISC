# RedPitayaRISC
A RISC-V implementation on a RedPitaya STEMLab 125-10

## Installation
1. Clone this repository onto your RedPitaya
2. Run install.sh to install the app (files are copied into `/opt/redpitaya/www/apps/risc_v_app`, `/opt/redpitaya/www/apps/fpga` and `/opt/redpitaya/www/apps/lib`)

## Disclaimer
I was able to work on this project because RedPitaya graciously provided me with a free STEMLab 125-10 for this project.
My thanks go to them!

## Project Definition
This project counts as completed iff all of the following are met:
* A RISC-V single-cycle processor (at least RV32IMAFD) is implemented in hardware (to be loaded onto the FPGA)
* A web application runs on the board where:
  * The user can upload a RISC-V assembly file
  * The assembly file is assembled on the backend
  * That file is then executed on the FPGA using the RISC-V processor implementation
  * The execution can produce in-memory results that are visible in the web application (e.g. by having a continuously updated view of the memory values)

## Project Timeline
| Date | Milestone |
| ---- | ---- |
| 25 June 2021 | Board received |
| 25 December 2021 | Project Deadline |
