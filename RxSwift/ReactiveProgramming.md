# Reactive Programmin

## 명령형

- 값이 변화해도 적용되지 않음

```swif
var a = 1
var b = 2
a + b
a = 12
```



## 반응형

- 값이 변하면 적용되어 변함

```sw
let a = BehaviorSubject(value: 1)
let b = BehaviorSubject(value: 2)
Observable.combineLatest(a, b) { $0 + $1 }.subscribe(onNext: {print($0)}).disposed(by: disposeBag)
a.onNext(12)
```

