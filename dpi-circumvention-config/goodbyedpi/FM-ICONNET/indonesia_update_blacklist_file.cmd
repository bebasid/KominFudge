@ECHO OFF
PUSHD "%~dp0"
bitsadmin /transfer blacklist https://trustpositif.kominfo.go.id/assets/db/domains_isp "%CD%\indonesia-blacklist.txt"
POPD
