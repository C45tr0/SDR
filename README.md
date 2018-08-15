# Notes
This is specifically built to work with ubuntu 18.04 desktop. The main changes might be how the x11 forwarding is setup. If gui applications are not working correctly, that would be the first place to look.

This is tested with the base image of hotbox(https://homelandofthings.org/) and the 03/19/2018(https://homelandofthings.org/2018/03/new-hotbox-docker/) version. 

# Ubertooth Image
   - Based on hotbox
   - Pins greatescottgadgets/(libbtbb and ubertooth) to 2018-08-R1
   - Builds
      - libbtbb
      - ubertooth firmware
      - ubertooth host tools
## (Re)Build
   - docker-compose build ubertooth
## Run
   - To shell: docker-compose run ubertooth
   - Scan: docker-compose run ubertooth ubertooth-scan
   - SpecanUI: docker-compose run ubertooth ubertooth-specan-ui
   - Upgrade Firmware: docker-compose run ubertooth ./upgrade.sh

