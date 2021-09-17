# node-framework-benchmark

Benchmark NodeJS frameworks using [Autocannon](https://gitter.im/mcollina/autocannon)

## Install

First, install autocannon library for testing. Install autocannon as global.
```
yarn add autocannon -g // or npm i autocannon -g

```
*Install dependencies*
```
yarn
```

## Run

Basic Testing - It will generate results-plain.txt for report.
```
yarn plain 
```

Testing with Pipeline - It command will generate results-plipeline.txt for report.
```
yarn pipeline 
```


## Results

### Example console output per framework

1 endpoints - Koa.js
Running 10s test @ http://localhost:3070
1024 connections

| Stat    | 2.5%  | 50%   | 97.5% | 99%    | Avg      | Stdev    | Max     |
| ------- | ----- | ----- | ----- | ------ | -------- | -------- | ------- |
| Latency | 34 ms | 46 ms | 97 ms | 174 ms | 51.64 ms | 48.53 ms | 1324 ms |

| Stat      | 1%     | 2.5%   | 50%     | 97.5%   | Avg     | Stdev   | Min    |
| --------- | ------ | ------ | ------- | ------- | ------- | ------- | ------ |
| Req/Sec   | 4647   | 4647   | 21247   | 23567   | 19787   | 5264.64 | 4644   |
| Bytes/Sec | 813 kB | 813 kB | 3.72 MB | 4.12 MB | 3.46 MB | 922 kB  | 813 kB |

Req/Bytes counts sampled once per second.

199k requests in 10.26s, 34.6 MB read

### File output

Results are stored into a txt file. You can copy the results in JSON format from these.

## Attribution

This project is a clone of [RrArdian/nodefw-benchmark](https://github.com/RrArdian/nodefw-benchmark)
