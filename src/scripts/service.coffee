angular.module 'ngStopwatch.services'
.service 'stopwatch', ()->

  return API = {
    timers: {}
    create: (name)->
      API.timers[name] = {
        name      : name
        isRunning : true
        started   : new Date().getTime()
        current   : 0
        stopped   : null
        laps      : []
        lastLap   : 0
      }

    getTime: (name)->
      return if API.timers[name]?
      time = -1
      if API.timers[name].isRunning
        time = API.timers[name].current = new Date().getTime() - API.timers[name].started
      else
        time = API.timers[name].stopped - API.timers[name].started

      return time

    start: (name, reset)->
      API.create(name) if !API.timers[name]?
      API.timers[name].started = new Date().getTime()

      console.log API.timers[name]

      return API.timers[name]


    stop: (name)->
      if API.timers[name]?
        API.timers[name].stopped = new Date().getTime()
        API.timers[name].current = API.timers[name].stopped - API.timers[name].started

      return API.timers[name].current

    lap: (name)->
      timer = API.timers[name]

      if timer.laps.length is 0
        lapTime = new Date().getTime() - timer.started
      else
        lapTime = new Date().getTime() - timer.laps[timer.laps.length - 1]


      timer.lastLap = lapTime
      timer.laps.push lapTime



    reset: (name)->
      API.timers[name] = {
        name      : name
        isRunning : false
        started   : null
        current   : 0
        stopped   : null
        laps      : []
        lastLap   : 0
      }
  }
