**************************
Simple Queue Service (SQS)
**************************

= Short timeframe

First AWS service
Message orientated API
Messages can be delivered multiple times
Messages can be in any order
Need to implement app level tracking
Messages can be 256kb
Billed in 64kb chunks (4 chunks = 256)

Visibility/timeout default = 30 seconds
Visibility/timeout max = 12 hours
Message retention period = 1 minute to 14 days

Max long polling timeout = 20 seconds
-burn cpu cycles with no messages
-will wait long poll timeout
-inexpensive, save money
-pull queue once every 20 seconds

ReceiveMessageWaitTimeSeconds = set this for long polling

Fanning out
-SNS Topic -> Create/Subscribe multiple SQS queues
-deliver message to all queues

Basic Message Operations
-SendMessage: Send messages to a specified queue
-ReceiveMessage: Return one or more messages from a specified queue
-DeleteMessage: Remove a previously received message from a specified queue
-ChangeMessageVisibility: Change the visibility timeout of a previously received message

Batch Message Operations
-SendMessageBatch: Send multiple messages to a specified queue
-DeleteMessageBatch: Remove multiple previously received messages from a specified queue
-ChangeMessageVisibilityBatch: Change the visibility timeout of multiple previously received messages

Basic Queue Management
-CreateQueue: Create queues for use with your AWS account
-ListQueues: List your existing queues
-DeleteQueue: Delete one of your queues
-PurgeQueue: Delete all the messages in a queue

Advanced Queue Management
-SetQueueAttributes: Control queue settings such as the visibility timeout (amount of time that messages are locked after being read so they cannot be read again), a delay value, or dead letter queue parameters
-GetQueueAttributes: Get information about a queue such as the visibility timeout, number of messages in the queue, or the maximum message size.
-GetQueueUrl: Get the queue URL
-AddPermission: Add queue sharing for another AWS account for a specified queue
-RemovePermission: Remove an AWS account from queue sharing for a specified queue
-ListDeadLetterSourceQueues: List the queues attached to a dead letter queue

SQS API:
-ReceiveMessage			          : Receive one or more messages in Queue (up to 10)
-DeleteMessage				          : Delete a message from queue
-SendMessage				          : Send a message to a queue
-ChangeMessageVisibility	    : Change the message visibility timeout
-DeleteMessageBatch		        : Delete a set of messages (up to 10)
-SendMessageBatch			        : Send a batch of messages (up to 10). Total Size of all messages cannot exceed 256 KB.
-ChangeMessageVisibilityBatch : Change a batch of messages visibility (up to 10)
-CreateQueue
-DeleteQueue
-ListQueues
-ListDeadLetterSourceQueues   : List all Dead Letter Source Queues
-PurgeQueue				            : Delete all messages in a Queue
-SetQueueAttributes	          : MessageRetentionPeriod(Up to 14 days),MaximumMessageSize(upto 256 KB),ReceiveMessageWaitTimeSeconds(up to 20 sec) DelaySeconds(up to 15 min)
-GetQueueAttributes

*****************************
Simple Workflow Service (SWF)
*****************************

= Long timeframe

Easily coordinate work across distributed applications
Task orientated API
Task only assigned once and never duplicated
Tracks all tasks and events

Max workflow = 1 year

Sample
Verify order, change credit card, ship order, record done

Domain = think collection of everything
(W) Workflow
(A) Activity types
(W) Workflow execution

(W) Worker
-Get tasks, process tasks, return results

(D) Decider
-Controls coordination of tasks

Workers/Deciders
-Do not track execution state
-Could run on an EC2 instance

Supported SDK's
-java
-.net
-node.js
-php
-python
-ruby

**************************
Simple Email Service (SES)
**************************

-cost effective email service built on the reliable and scalable infrastructure that Amazon.com developed to serve its own customer base
-send and receive email with no required minimum commitments
-pay as you go, and you only pay for what you use.
-uses content filtering technologies to help detect and block messages containing viruses or malware before they can be sent.
-before you can send an email using Amazon SES, you must verify each email address (or the domain of the email address) that you will use as a "From", "Source", "Sender", or "Return-Path" address to prove that you own it.

API
-VerifyEmailIdentity
-ListIdentities
-DeleteIdentity
-GetIdentityVerificationAttributes
