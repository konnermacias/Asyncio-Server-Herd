# Asyncio Server Herd
Server herd which quickly communicates data between each internal server to keep data "on-hand" and avoid potentially slow database queries.

Client's can gather events happening around other clients using TicketMaster's API by specifying radius and days ahead you would like to search. Potentially useful if looking to surprise a friend with an event happening near them!

## Servers
Each Server is named after a 18-19 Los Angeles Laker, and has the following port:
- Ball : 11605
- Ingram : 11606
- James : 11607
- Kuzma : 11608
- McGee : 11609

## Start your servers
```
sh start_servers.sh
```

## Kill your servers
```
sh kill_servers.sh
```

## Client Requests
### IAMAT
Tell the server where a client is at. Takes client id, ISO 6709 location.
```
nc localhost [PORT]
IAMAT kiwi.cs.ucla.edu +34.068930-118.445127 1479413884.392014450
```

### WHATSAT
Create a request of data in JSON format near a given client. Arguments include client id, radius, and number of days ahead you would like to search.

```
nc localhost [PORT]
WHATSAT kiwi.cs.ucla.edu 50 100
```

