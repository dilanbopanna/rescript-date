# Week helpers

#### addWeeks

> Add the specified number of week to the given date.

`let addWeeks: (Js.Date.t, int) => Js.Date.t`

```reason
let date = makeWithYMD(~year=2018., ~month=0., ~date=1., ());

date->ReDate.addWeeks(1);
```

#### subWeeks

> Subtract the specified number of weeks from the given date.

`let subWeeks: (Js.Date.t, int) => Js.Date.t`

```reason
let date = makeWithYMD(~year=2018., ~month=0., ~date=8., ());

date->ReDate.subWeeks(1);
```

#### differenceInWeeks

> Get the number of full weeks between the given dates.

`let differenceInWeeks: (Js.Date.t, Js.Date.t) => int`

```reason
let fstDate = makeWithYMDHMS(~year=2018., ~month=0., ~date=7., ~hours=23., ~minutes=59., ~seconds=59., ());
let sndDate = makeWithYMDHMS(~year=2018., ~month=0., ~date=1., ~hours=0., ~minutes=0., ~seconds=0., ());

fstDate->ReDate.differenceInWeeks(sndDate);
```

#### differenceInCalendarWeeks

> Get the number of calendar weeks between the given dates.

`let differenceInCalendarWeeks: (~weekStartsOn: day=?, Js.Date.t, Js.Date.t) => int`

```reason
let fstDate = makeWithYMD(~year=2018., ~month=8., ~date=20., ());
let sndDate = makeWithYMD(~year=2018., ~month=7., ~date=7., ());

fstDate->ReDate.differenceInCalendarWeeks(sndDate);
```

```reason
let fstDate = makeWithYMD(~year=2018., ~month=6., ~date=15., ());
let sndDate = makeWithYMD(~year=2018., ~month=5., ~date=20., ());
let differenceInCalendarWeeks' = ReDate.differenceInCalendarWeeks(~weekStartsOn=Monday);

fstDate->differenceInCalendarWeeks'(sndDate);
```

#### startOfWeek

> Return the start of a week for the given date.

`let startOfWeek: (~weekStartsOn: day=?, Js.Date.t) => Js.Date.t`

```reason
let date = makeWithYMDHMS(~year=2018., ~month=0., ~date=12., ~hours=16., ~minutes=50., ~seconds=12., ());

date->ReDate.startOfWeek;
```

```reason
let date = makeWithYMDHMS(~year=2018., ~month=0., ~date=12., ~hours=16., ~minutes=50., ~seconds=12., ());
let startOfWeek' = ReDate.startOfWeek(~weekStartsOn=Monday);

date->startOfWeek';
```

#### endOfWeek

> Return the end of a week for the given date.

`let endOfWeek: (~weekStartsOn: day=?, Js.Date.t) => Js.Date.t`

```reason
let date = makeWithYMDHMS(~year=2018., ~month=0., ~date=12., ~hours=16., ~minutes=50., ~seconds=12., ());

date->ReDate.endOfWeek;
```

```reason
let date = makeWithYMDHMS(~year=2018., ~month=0., ~date=12., ~hours=16., ~minutes=50., ~seconds=12., ());
let endOfWeek' = ReDate.endOfWeek(~weekStartsOn=Monday);

date->endOfWeek';
```

#### isSameWeek

> Are the given dates in the same week?

`let isSameWeek: (~weekStartsOn: day=?, Js.Date.t, Js.Date.t) => bool`

```reason
let fstDate = makeWithYMDHMS(~year=2018., ~month=0., ~date=1., ~hours=16., ~minutes=50., ~seconds=12., ());
let sndDate = makeWithYMDHMS(~year=2018., ~month=0., ~date=5., ~hours=10., ~minutes=15., ~seconds=55., ());

fstDate->ReDate.isSameWeek(sndDate);
```

```reason
let fstDate = makeWithYMDHMS(~year=2018., ~month=0., ~date=6., ~hours=23., ~minutes=59., ~seconds=59., ());
let sndDate = makeWithYMDHMS(~year=2018., ~month=0., ~date=7., ~hours=0., ~minutes=0., ~seconds=0., ());
let isSameWeek' = ReDate.isSameWeek(~weekStartsOn=Monday);

fstDate->isSameWeek'(sndDate);
```

#### lastDayOfWeek

> Return the last day of a week for the given date.

`let lastDayOfWeek: (~weekStartsOn: day=?, Js.Date.t) => Js.Date.t`

```reason
let date = makeWithYMDHMS(~year=2018., ~month=0., ~date=12., ~hours=16., ~minutes=50., ~seconds=12., ());

date->ReDate.lastDayOfWeek;
```

```reason
let date = makeWithYMDHMS(~year=2018., ~month=0., ~date=12., ~hours=16., ~minutes=50., ~seconds=12., ());
let lastDayOfWeek' = ReDate.lastDayOfWeek(~weekStartsOn=Monday);

date->lastDayOfWeek';
```