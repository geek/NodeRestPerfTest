# Node.js Framework Performances Compared on the metal vs VM

## Test Setup

* CentOS 7
* Node.js v6.9.2
* 2GB RAM & 1 CPU in the same datacenter
* VM vs Metal


## Results

### Metal

```
express
Requests per second:    3539.62 [#/sec] (mean)

hapi
Requests per second:    1111.33 [#/sec] (mean)

node
Requests per second:    5441.34 [#/sec] (mean)

restify
Requests per second:    2704.83 [#/sec] (mean)

koa
Requests per second:    3652.47 [#/sec] (mean)

total.js
Requests per second:    4649.44 [#/sec] (mean)
```


### VM

```
express
Requests per second:    1922.85 [#/sec] (mean)

hapi
Requests per second:    730.77 [#/sec] (mean)

node
Requests per second:    2819.11 [#/sec] (mean)

restify
Requests per second:    1706.32 [#/sec] (mean)

koa
Requests per second:    2118.25 [#/sec] (mean)

total.js
Requests per second:    2304.08 [#/sec] (mean)
```
