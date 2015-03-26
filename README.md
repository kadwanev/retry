retryit - The command line retry tool
------------------------------------------

Retry any shell command with exponential backoff or constant delay.

### Instructions

Install:

`gem install retryit`

### Usage

Help:

`retry -?`

    Usage: retry [options] -e execute command
        -h, -?, --help
        -t, --tries=#                    Set max retries: Default 10
        -s, --sleep=secs                 Constant sleep amount (seconds)
        -m, --min=secs                   Exponenetial Backoff: minimum sleep amount (seconds): Default 0.3
        -x, --max=secs                   Exponenetial Backoff: maximum sleep amount (seconds): Default 60

### Examples

No problem:

`retry echo u work good`

    u work good

Test functionality:

`retry 'echo "y u no work"; false'`

    y u no work
    Before retry #1: sleeping 0.3 seconds
    y u no work
    Before retry #2: sleeping 0.6 seconds
    y u no work
    Before retry #3: sleeping 1.2 seconds
    y u no work
    Before retry #4: sleeping 2.4 seconds
    y u no work
    Before retry #5: sleeping 4.8 seconds
    y u no work
    Before retry #6: sleeping 9.6 seconds
    y u no work
    Before retry #7: sleeping 19.2 seconds
    y u no work
    Before retry #8: sleeping 38.4 seconds
    y u no work
    Before retry #9: sleeping 60.0 seconds
    y u no work
    Before retry #10: sleeping 60.0 seconds
    y u no work

Limit retries:

`retry -t 4 -e 'echo "y u no work"; false'`

    y u no work
    Before retry #1: sleeping 0.3 seconds
    y u no work
    Before retry #2: sleeping 0.6 seconds
    y u no work
    Before retry #3: sleeping 1.2 seconds
    y u no work
    Before retry #4: sleeping 2.4 seconds
    y u no work

Bad command:

`retry poop`

    Command Failed: poop

### License

Apache 2.0 - go nuts
