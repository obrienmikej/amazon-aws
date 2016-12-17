monitored every 60 seconds
only reports when requests/traffic are flowing through ELB

***************
Key ELB Metrics
***************
HealthyHostCount
UnHealthyHostCount
-The number of healthy and unhealthy instances registered with your load balancer. A newly registered instance is considered healthy after it passes the first health check. An instance is considered unhealthy after it exceeds the unhealthy threshold configured for health checks. An unhealthy instance is considered healthy again after it meets the healthy threshold configured for health checks. If cross-zone load balancing is enabled, the number of healthy instances for the LoadBalancerName dimension is calculated across all Availability Zones.

RequestCount
-The number of requests completed or connections made during the specified interval (1 or 5 minutes)

Latency
-[HTTP listener] The time elapsed, in seconds, after the request leaves the load balancer until the headers of the response are received

HTTPCode_ELB_4xx
HTTPCode_ELB_5xx
-Number of HTTP error codes generated by the ELB

HTTPCode_Backend_xxx
-HTTP response codes generated by back-end instances.  Excludes codes generated by ELB

BackendConnectionErrors
-Number of connections that were not successfully established between the ELB and registered instances

***************
know these good
***************
SurgeQueueLength
-The total number of requests that are pending routing. The load balancer queues a request if it is unable to establish a connection with a healthy instance in order to route the request. The maximum size of the queue is 1,024. Additional requests are rejected when the queue is full. For more information, see SpilloverCount.

SpilloverCount
-The total number of requests that were rejected because the surge queue is full