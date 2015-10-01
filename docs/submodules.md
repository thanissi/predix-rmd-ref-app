## Pulling Submodules and Manual Steps

This page will be a work-in-progress for a while till we get every last step documented.

1. Download and build
  2. Run ./pullSubmodules.sh to download all the Git submodule repositories
  1. Run mvn clean test
    * do not run, mvn clean install, which runs integration tests that won't match up to your org/space yet
1. Push [Predix-Boot](https://github.com/PredixDev/predix-rmd-ref-app/blob/master/docs/microcomponents.md#PredixBoot) to have something to bind to
1. Create Secure Client Id and User
  2. Create UAA defining an Admin secret
  2. Bind Predix-Boot to UAA
  3. View VCAP to get UAA Instance Id and URL
  4. Create Asset using UAA as trustedIssuer
  5. Create Timeseries using UAA as trustedIssure
  6. Create ACS using UAA as trustedIssuer
  7. Bind Asset, Timeseries, UAA to Predix-Boot
  8. View UAA to get instance ids
  9. Set UAAC target to uaa instance
  10. Become UAAC admin user
  11. Create Client Id 
  12. Create User
  13. Create Groups using scope names from Asset, Timeseries and ACS
  14. Add User to Groups
15. Setup Manifest 
  15. Set ClientId, Asset name, Timeseries name, ACS name, UAA name in manifest
  24. Push data-seed, data-ingestion, http-datariver (will be deprecated), machine-datasimulator, rmd-datasource, rmd-analytics, fdh-router, rmd-orchestration, rmd-ref-app-ui.
24. Run Dataseed to load Spreadsheet data
25. Run Reference App UI


