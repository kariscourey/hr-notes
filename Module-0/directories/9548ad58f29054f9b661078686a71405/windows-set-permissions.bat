
:: For windows: make a .bat script which sits next to the ship folder which will set the below permissions. The windows instructions should explicitly indicate to run this file. Need to test that this works.

:: Files to be made "read-only", specifically they cannot be deleted and would prompt if you tried to overwrite or edit them:

:: * 002-files-and-directories/filesystem-exercise-zip/ship/below-deck/cheese
:: * 002-files-and-directories/filesystem-exercise-zip/ship/below-deck/stain
:: * 002-files-and-directories/filesystem-exercise-zip/ship/cargo/crate02
:: * 002-files-and-directories/filesystem-exercise-zip/ship/cargo/crate05
:: * 002-files-and-directories/filesystem-exercise-zip/ship/food-storage/water
:: * 002-files-and-directories/filesystem-exercise-zip/ship/crew/crew3.person
:: * 002-files-and-directories/filesystem-exercise-zip/ship/crew/crew-list.txt

@echo off

:: https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/icacls

icacls ship/below-deck/cheese /deny Everyone:D
icacls ship/below-deck/stain /deny Everyone:D
icacls ship/cargo/crate02 /deny Everyone:D
icacls ship/cargo/crate05 /deny Everyone:D
icacls ship/food-storage/water /deny Everyone:W
icacls ship/food-storage/water /grant Everyone:R
icacls ship/crew/crew3.person /deny Everyone:D
icacls ship/food-storage/water /grant Everyone:R
icacls ship/crew/crew-list.txt /deny Everyone:D
icacls ship/food-storage/water /grant Everyone:R

icacls ship/kitchen/bowl /deny Everyone:DW
icacls ship/kitchen/cup /deny Everyone:DW
icacls ship/kitchen/plate /deny Everyone:DW
icacls ship/kitchen/spoon /deny Everyone:DW

icacls ship/kitchen/bowl /grant Everyone:R
icacls ship/kitchen/cup /grant Everyone:R
icacls ship/kitchen/plate /grant Everyone:R
icacls ship/kitchen/spoon /grant Everyone:R

icacls ship/kitchen/kettle /grant Everyone:W

echo You set the permissions! Nice work! > permissions-set-congrats

echo nice job setting permissions!