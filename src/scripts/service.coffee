angular.module 'ngStopwatch.services'
.service 'stopwatch', ($interval)->
  idController = 0
  class StopWatch
    constructor: (config)->
      @id = ++idController
      @lapStarted = null

      initial = {
        name: "timer#{idController}"
        created: new Date().getTime()
        current: 0
        stopped: null
        laps: []
        currentLap: 0
        lastLap: null
        refreshRate: 100
        running: false
        autoRefresh: true
      }

      angular.merge @, initial
      @interval = null

      angular.merge @, config


      if @autoRefresh
        @trackCurrent()

      @start()


    getTime: ->
      if @running
        @stop()

      return @current

    start: ->
      return if @running
      @running = true
      @lastStart = new Date().getTime()

      unless !@autoRefresh
        @trackCurrent()

    stop: ->
      now = new Date().getTime()
      return if !@running
      $interval.cancel(@interval)
      @running = false
      @stopped = now

      @current += @stopped - @lastStart
      @currentLap += @stopped - @lastStart

    reset: ->
      angular.merge @, {
        created: null
        current: 0
        stopped: null
        laps: []
        currentLap: 0
        lastLap: null
        running: false
      }


    lap: ->
      return if !@running
      $interval.cancel(@interval) # cancel any pending tracking
      now = new Date().getTime()
      if !@autoRefresh
        @current += now - @lastStart
        @currentLap += now - @lastStart
        @lastStart = now

      # @currentLap += now - @lastStart

      @lastLap = @currentLap
      @currentLap = 0
      @laps.push @lastLap

      unless !@autoRefresh
        @trackCurrent()

    trackCurrent: ()->
      @interval = $interval =>
        now = new Date().getTime()
        @current += now - @lastStart
        @currentLap += now - @lastStart
        @lastStart = now
      , @refreshRate





  return API = {
    create: (config)->
      timer = new StopWatch(config)
      return timer
  }
