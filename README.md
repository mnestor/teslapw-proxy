# Proxy for querying tesla powerwall locally

## Overview ##

Originally I had been doing a script and cron job with telegraf to do the authentication. Then I ran across a post by [@mbg](https://github.com/mgb/) who had created a small [go application](https://github.com/mgb/tesla-powerwall-local) to do the querying to the powerwall. This simplifies the telegraf config and prevents issues where it loses the auth token until the crontjob fires again, something I had trouble with.

## Credits ##


## Configurables

### Required:

Powerwall authentication
```
USERNAME=
PASSWORD=
```

### Optional (with defaults):

```
POWERWALL=powerwall
```
