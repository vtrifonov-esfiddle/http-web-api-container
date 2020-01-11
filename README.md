# HTTP Web API Container

## HTTP Web API Container Stub 

Run all commads from the root repo folder using PowerShell

### Build

```
.\stub\build.ps1
```

### Example Usage

```
docker-compose -f .\stub\exampleUsage\docker-compose.yaml up
```

navigate to: http://localhost:45899/hello

### Development

1. Develop HTTP stubs in ```wiremocksStubs``` folder following [Wiremock's Stubbing JSON API](http://wiremock.org/docs/stubbing/)
2. Build
3. Run the dev container
```
.\stub\dev\up.ps1
```
4. Change stubs
5. To reflect the changes on Wiremock's server you need to reset the mappings 
```
.\stub\dev\resetMappings.ps1
```

