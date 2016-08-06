<!-- *********************************************************************** -->
<!--                                                                         -->
<!--                                                      :::      ::::::::  -->
<!-- Introduction_to_Reactive_Programming.md            :+:      :+:    :+:  -->
<!--                                                  +:+ +:+         +:+    -->
<!-- By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+       -->
<!--                                              +#+#+#+#+#+   +#+          -->
<!-- Created: 2016/08/06 11:23:56 by ngoguey           #+#    #+#            -->
<!-- Updated: 2016/08/06 13:40:37 by ngoguey          ###   ########.fr      -->
<!--                                                                         -->
<!-- *********************************************************************** -->

> 0h51 + gist article
> - https://gist.github.com/staltz/868e7e9bc2a7b8c1f754
> - https://egghead.io/courses/introduction-to-reactive-programming
> - http://trank.com.ua/course/Introduction-to-Reactive-Programming-RxJS-Angel-skiy

### Lecture 1: What is RxJS? (4:31)
```js
var source = Rx.Observable.interval(400).take(9)
  .map(i => ['1', '1', 'foo', '2', '3', '5', 'bar', '8', '13'][i])

var result = source
  .map(x => parseInt(x))
  .filter(x => !isNaN(x))
  .reduce((x, y))

result.subscribe(x => console.log(x))
```

### Lecture 2: Using an event stream of double clicks (4:36)
- `buffer(...)` method packs events
- `throttle(time)` method waits for `time`ms of "event silence"
```
clickStream:       ----c------c--c-----c-----c-c--c-------|-->
                   vvv buffer(clickStream.throttle(250ms)) vvv
                   ---------a---------a----a-----------a--|-->
                   vvvvvvvv map(array => array.length) vvvvvvv
                   ---------1---------2----1-----------3--|-->
                   vvvvvvvvv filter(len => len >= 2) vvvvvvvvv
doubleClickStream: -------------------2----------------3--|-->
```

### Lecture 3: Why choose RxJS? (4:05)
- There are many `Rx` libraries in many languages
```js
var streamA = Rx.Observable.of(3, 4, 5);
var streamB = streamA.map(a => 10 * a);

streamB.subscribe(b => console.log(b));
```

### Lecture 4: Async requests and responses in RxJS (7:14)
- Ref: `callback hell`
```js
// Version1
// `jQuery.getJSON` return a promise
var requestStream = Rx.Observable.just('https://api.github.com/users');

requestStream.subscribe(requestUrl => {
  jQuery.getJSON(requestUrl)
    .done(response => {
      console.log(response);
    });
});
```
```js
// Version2
// `Rx.Observable.create` create a custom stream.
// We wrap the `jQuery Ajax Promise` with an `Observable`
// An `observable` is a superset of a `promise`. An `observable` being a `stream of events`, a `promise` is an `observable` with one single emitted value.
var requestStream = Rx.Observable.just('https://api.github.com/users');

requestStream.subscribe(requestUrl => {
  var responseStream = Rx.Observable.create(observer => {
    jQuery.getJSON(requestUrl)
      .done(response => observer.onNext(response))
      .fail(jqXHR, status, error => observer.onError(error))
      .always(() => observer.onCompleted())
    });

  responseStream.subscribe(response => {
      console.log(response);
  });
});
```
```js
// Version3
var requestStream = Rx.Observable.just('https://api.github.com/users');

requestStream.subscribe(requestUrl => {
  var responseStream =
    Rx.Observable.fromPromise(jQuery.getJSON(requestUrl));

  responseStream.subscribe(response => {
      console.log(response);
  });
});
```
```js
// Version4
// In this context, `responseStream` is a `stream of stream` aka `metastream`
var requestStream = Rx.Observable.just('https://api.github.com/users');

var responseStream = requestStream
  .map(requestUrl =>
    Rx.Observable.fromPromise(jQuery.getJSON(requestUrl)));
```
```js
// Version5
var requestStream = Rx.Observable.just('https://api.github.com/users');

var responseStream = requestStream
  .flatMap(requestUrl =>
    Rx.Observable.fromPromise(jQuery.getJSON(requestUrl)));

responseStream.subscribe(response => {
  console.log(response);
});
```

### Lecture 5: Rendering on the DOM with RxJS (5:22)
### Lecture 6: New requests from refresh clicks (5:07)
### Lecture 7: Clear data while loading with RxJS startWith (6:28)
- `startWith()`
```
refreshClickStream: ----------o---------o---->
     requestStream: -r--------r---------r---->
    responseStream: ----R----------R------R-->
 suggestion1Stream: -N--s-----N----s----N-s-->
 suggestion2Stream: -N--q-----N----q----N-q-->
 suggestion3Stream: -N--t-----N----t----N-t-->
```

### Lecture 8: Sharing network requests with RxJS merge (3:34)
- `shareReplay`

### Lecture 9: Using cached network data with RxJS (7:44)
- `withLatestFrom`

### Lecture 10: An overview of reactive concepts (2:14)
- `Separation of concerns`: The declaration of a stream specifies the complete behavior over time.
