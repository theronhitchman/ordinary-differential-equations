︠8fd60522-7ec5-41d8-9592-fb7361e46cc7︠
x, y = var('x y')

def rk4(expr, inits=[0,1], step_size=0.1, num_steps=10):
    xs, ys = [inits[0]], [inits[1]]
    for k in range(0,num_steps):
        xcurr = xs[-1]
        ycurr = ys[-1]

        half_step = xcurr + step_size/2
        xnext = xcurr + step_size

        k1 = expr(x=xcurr,y=ycurr)
        k2 = expr(x=half_step,y=ycurr+(1/2)*step_size*(k1))
        k3 = expr(x=half_step,y=ycurr+(1/2)*step_size*(k2))
        k4 = expr(x=xnext,y=ycurr+step_size*k3)

        next_slope = (k1 + 2*k2 + 2*k3 + k4)/6
        xs.append(xnext)
        ys.append(ycurr+step_size*next_slope)
    print zip(xs,ys)[-1]
︡9e763308-1e9d-4cf0-a64a-465cd3af69d1︡
︠30412d4e-3dd3-480d-a2f8-d50c76a80c1ci︠
%md
Now we will try out the method on our toy problem:
\[ y' = \cos(x\cdot y), \qquad y(0)=1/2 \]
We try to approximate $y(2)$.
︡9e935474-8de5-4d8e-a2f6-4441b4e2a519︡{"md":"Now we will try out the method on our toy problem:\n\\[ y' = \\cos(x\\cdot y), \\qquad y(0)=1/2 \\] \nWe try to approximate $y(2)$.\n"}︡
︠9e77fee7-aa70-4c5c-954c-efa4d4358490︠
rk4(cos(x*y), inits=[0,1/2], step_size=0.1,num_steps=20)
︡c9955dee-7ae9-4697-85b7-b04a9cb56b38︡{"stdout":"(2.00000000000000, 1.04537995133589)\n"}︡
︠ee3a65d2-46c4-4169-a0f7-5264fc2e685d︠
rk4(cos(x*y), inits=[0,1/2], step_size=0.05,num_steps=40)
︡78714846-05e8-4a6b-a3ec-57d3c92ddd97︡{"stdout":"(2.00000000000000, 1.04538077653581)\n"}︡
︠f1a0a8d3-bb30-4d8a-a939-8256153491e2︠
rk4(cos(x*y), inits=[0,1/2], step_size=0.01, num_steps=200)
︡87f54861-6ca5-440b-b446-ba055ea9f0fa︡{"stdout":"(2.00000000000000, 1.04538082625992)"}︡{"stdout":"\n"}︡
︠18d9aa4e-41e9-480d-80eb-81ad12d83262︠
rk4(cos(x*y), inits=[0,1/2], step_size=0.001, num_steps=2000)

︡79b9b06c-53c0-4eb8-a8f4-22ba999e1903︡{"stdout":"(1.99999999999989, 1.04538082633387)"}︡{"stdout":"\n"}︡
︠c31b8eca-194a-4f06-8f82-6c87fd58d7a4i︠
%md
And now we try it on the newer problem:
\[ y' = x^2 + y^2, \qquad y(0)=1/2  \]
We try to approximate $y(2)$.
︡ea425dda-d23d-43ee-a169-de58ee17409e︡{"md":"And now we try it on the newer problem:\n\\[ y' = x^2 + y^2, \\qquad y(0)=1/2  \\]\nWe try to approximate $y(2)$.\n"}︡
︠3bf20b13-1470-421d-b696-416584e937e0︠
rk4(x^2+y^2, inits=[0,1/2], step_size=0.5, num_steps=4)

︡1cd972ec-a28e-4b2c-9080-69da54039b72︡{"stdout":"(2.00000000000000, 1.44555983472137e9)\n"}︡
︠59e18bda-8f96-4b62-96ac-e7f9f4934ae3︠
rk4(x^2+y^2, inits=[0,1/2], step_size=0.1, num_steps=20)
︡7b57f92b-bfab-48e6-af1c-c9488dfb42d7︡{"stdout":"(2.00000000000000, 5.09250413560335e193448)\n"}︡
︠c5386fc0-a2f8-459d-b1a8-01811cd5a970︠
rk4(x^2+y^2, inits=[0,1/2], step_size=0.05, num_steps=40)
︡b2694a7a-37cd-49bf-a543-1214401972df︡{"stdout":"(2.00000000000000, 1.04823238826981e52831758463)\n"}︡
︠1d3abf93-83c6-4055-b315-97441808e34e︠
rk4(x^2+y^2, inits=[0,1/2], step_size=0.01, num_steps=200)
︡e2197900-0c09-442d-8988-57c3e5b793e5︡{"stdout":"(2.00000000000000, +infinity)"}︡{"stdout":"\n"}︡
︠622a7ada-98d9-4523-a8d6-f0ae947cdd55︠
rk4(x^2+y^2, inits=[0,1/2], step_size=0.005, num_steps=400)
︡782c043d-4662-448e-935e-73afa64042df︡{"stdout":"(1.99999999999998, +infinity)"}︡{"stdout":"\n"}︡
︠cff7a106-0efc-4af2-a1fc-4aa4dbb9b859︠









