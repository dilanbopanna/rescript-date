type interval = {
  start: Js.Date.t,
  end_: Js.Date.t
};

let isEqual: (Js.Date.t, Js.Date.t) => bool;

let isAfter: (Js.Date.t, Js.Date.t) => bool;

let isBefore: (Js.Date.t, Js.Date.t) => bool;

let isFuture: Js.Date.t => bool;

let isPast: Js.Date.t => bool;

let compareAsc: (Js.Date.t, Js.Date.t) => int;

let compareDesc: (Js.Date.t, Js.Date.t) => int;

let minOfArray: array(Js.Date.t) => Js.Date.t;

let minOfList: list(Js.Date.t) => Js.Date.t;

let maxOfArray: array(Js.Date.t) => Js.Date.t;

let maxOfList: list(Js.Date.t) => Js.Date.t;

let isWithinInterval: (Js.Date.t, ~start: Js.Date.t, ~end_: Js.Date.t) => bool;

let areIntervalsOverlapping: (interval, interval) => bool;

let getOverlappingDaysInIntervals: (interval, interval) => int;

let getDaysInMonth: Js.Date.t => int;

let addDays: (Js.Date.t, int) => Js.Date.t;

let subDays: (Js.Date.t, int) => Js.Date.t;

let addWeeks: (Js.Date.t, int) => Js.Date.t;

let subWeeks: (Js.Date.t, int) => Js.Date.t;

let addMonths: (Js.Date.t, int) => Js.Date.t;

let subMonths: (Js.Date.t, int) => Js.Date.t;

let addYears: (Js.Date.t, int) => Js.Date.t;

let subYears: (Js.Date.t, int) => Js.Date.t;

let startOfDay: Js.Date.t => Js.Date.t;

let endOfDay: Js.Date.t => Js.Date.t;

let diffInCalendarDays: (Js.Date.t, Js.Date.t) => int;

let diffInDays: (Js.Date.t, Js.Date.t) => int;

let eachDayOfIntervalArray: interval => array(Js.Date.t);

let eachDayOfIntervalList: interval => list(Js.Date.t);

let startOfYear: Js.Date.t => Js.Date.t;

let getDayOfYear: Js.Date.t => int;

let isSameDay: (Js.Date.t, Js.Date.t) => bool;

let isToday: Js.Date.t => bool;

let isTomorrow: Js.Date.t => bool;

let isYesterday: Js.Date.t => bool;

let diffInWeeks: (Js.Date.t, Js.Date.t) => int;

let startOfWeek: (~weekStartsOn: int=?, Js.Date.t) => Js.Date.t;

let endOfWeek: (~weekStartsOn: int=?, Js.Date.t) => Js.Date.t;

let diffInCalendarWeeks: (~weekStartsOn: int=?, Js.Date.t, Js.Date.t) => int;
