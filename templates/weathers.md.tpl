{{ with $todayWeather := index .Weather 0 }}

`{{ $todayWeather.City }}, {{ $todayWeather.Country }} - {{ formatDate $todayWeather.startTime $todayWeather.TimeZone }}`

<img src = "{$todayWeather.Icon}"/>

{{ $todayWeather.Condition}}

{{template "hourly-table" $todayWeather.HourlyWeathers}}

{{-end}}

<div align = "right">

*Update at: {{formatTime .UpdateAt}}

</div>