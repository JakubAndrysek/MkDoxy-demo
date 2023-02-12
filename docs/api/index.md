# API Demo

Look at folder to see how the API is generated.

<hr>

## Show function definition from project animals

```yaml
::: doxy.animal.Function
    name: void some_global_function(example::Animal *animal)
```

::: doxy.animal.Function
    name: void some_global_function(example::Animal *animal)


<hr>

## Show class method from project esp
```yaml
::: doxy.esp.Class.Method
    name: rb::MotorChangeBuilder
    method: brake (MotorId id, uint16_t brakingPower)
```

::: doxy.esp.Class.Method
    name: rb::MotorChangeBuilder
    method: brake (MotorId id, uint16_t brakingPower)

<hr>

## Show source code from project stm
```yaml
::: doxy.stm.Code
    file: Motor.hpp
    start: 8
    end: 20
```

::: doxy.stm.Code
    file: Motor.hpp
    start: 8
    end: 20

<hr>

## Show class from project stm
```yaml
::: doxy.esp.Class
    name: rb::MotorChangeBuilder
```

::: doxy.esp.Class
    name: rb::MotorChangeBuilder