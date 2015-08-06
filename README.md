# Stopwatch

Simple stopwatch angular plugin to track timing

This plugins gives you a service `stopwatch` to create instances of a stopwatch object

[Github page](https://shinrox.github.io/ngStopwatch)

## Install ##

**bower**
`bower install ngStopwatch`

**import in your module**
```

angular.module('MyApp', ['ngStopwatch'])

```



## Usage ##

- Import the service where you need to use

```coffee

angular.module('MyApp')
.controller 'MyCtrl', ['stopwatch'], (stopwatch)->

  timer = stopwatch.create() # starts automatically

  for item in itens
    # doSomething...
    console.log timer.lap() # ellapsed time since last lap (or timer start)


  timer.stop()
  console.log timer.current # current ellapsed time (since start + all laps)

  # you can start the same timer again

  timer.start()

  # will start again, but ignores ellapsed time while stopped
  # (as a stopwatch should do)

  timer.reset()
  # will reset ellapsed time and laps but keeps the current state
  # from the timer (doesn't stop/start the timer, only reset tracked
  # time and laps)

})


```


## Available properties/methods ##

**service 'stopwatch'**


* create

> creates an instance of the service

Ex.
`timer = stopwatch.create()`


**created instance 'stopwatch.create(options)'**

**properties**

```coffee
instance = {
  name: "timer#{idController}" || options.name
  created: new Date().getTime()
  current: 0
  stopped: null
  laps: []
  currentLap: 0
  lastLap: null
  refreshRate: 100 || options.refreshRate # changes current and currentLap values
  running: false
  autoRefresh: true || options.autoRefresh # ignores refresh for current and currentLap
}

```


**methods**


* timer.start() - Start the timer
* timer.stop() - Stop the timer
* timer.lap() - creates a lap based on the currentLap and lastLap time
* timer.reset() - reset laps, current, currentLap values (keep current running state)










