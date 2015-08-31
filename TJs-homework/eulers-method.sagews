︠8fd60522-7ec5-41d8-9592-fb7361e46cc7s︠
x, y = var('x y')

def euler_method(expr, inits=[0,1], step_size=0.1, num_steps=10):
    xs, ys = [inits[0]], [inits[1]]
    m = [ ]
    for k in range(1,num_steps+1):
        xcurr = xs[-1]
        ycurr = ys[-1]
        m.append(expr(x=xcurr,y=ycurr))
        xs.append(xcurr+step_size)
        ys.append(ycurr+step_size*m[-1])
    print zip(xs,ys)[-1]
︡5933e8ee-6347-41a6-8137-13a4239fd6c9︡
︠30412d4e-3dd3-480d-a2f8-d50c76a80c1ci︠
%md
Now we will try out the method on our toy problem:
\[ y' = \cos(x\cdot y), \qquad y(0)=1/2 \]
We try to approximate $y(2)$.
︡9e935474-8de5-4d8e-a2f6-4441b4e2a519︡{"md":"Now we will try out the method on our toy problem:\n\\[ y' = \\cos(x\\cdot y), \\qquad y(0)=1/2 \\] \nWe try to approximate $y(2)$.\n"}︡
︠9e77fee7-aa70-4c5c-954c-efa4d4358490︠
euler_method(cos(x*y), inits=[0,1/2], step_size=0.1,num_steps=20)
︡bfa972c3-dec0-4927-85fa-9b1ba27a5ebe︡{"stdout":"(2.00000000000000, 1.06856192530680)\n"}︡
︠ee3a65d2-46c4-4169-a0f7-5264fc2e685d︠
euler_method(cos(x*y), inits=[0,1/2], step_size=0.05,num_steps=40)
︡6c1ed4b0-5ffc-4611-9517-b98b7db0b8be︡{"stdout":"(2.00000000000000, 1.05676530611386)\n"}︡
︠f1a0a8d3-bb30-4d8a-a939-8256153491e2s︠
euler_method(cos(x*y), inits=[0,1/2], step_size=0.01, num_steps=200)
︡c5ec8088-9457-4630-b858-447912f720ab︡{"stdout":"(2.00000000000000, 1.04762709177082)\n"}︡
︠18d9aa4e-41e9-480d-80eb-81ad12d83262s︠
euler_method(cos(x*y), inits=[0,1/2], step_size=0.001, num_steps=2000)

︡32d28a4a-2c21-4d1c-a52b-fcd33b84b30d︡{"stdout":"(1.99999999999989, 1.04560478969238)"}︡{"stdout":"\n"}︡
︠c31b8eca-194a-4f06-8f82-6c87fd58d7a4i︠
%md
And now we try it on the newer problem:
\[ y' = x^2 + y^2, \qquad y(0)=1/2  \]
We try to approximate $y(2)$.
︡ea425dda-d23d-43ee-a169-de58ee17409e︡{"md":"And now we try it on the newer problem:\n\\[ y' = x^2 + y^2, \\qquad y(0)=1/2  \\]\nWe try to approximate $y(2)$.\n"}︡
︠3bf20b13-1470-421d-b696-416584e937e0︠
euler_method(x^2+y^2, inits=[0,1/2], step_size=0.5, num_steps=4)

︡a1f7e47c-6eaf-4462-b2f1-1467127558f8︡{"stdout":"(2.00000000000000, 4.80718009220436)\n"}︡
︠59e18bda-8f96-4b62-96ac-e7f9f4934ae3︠
euler_method(x^2+y^2, inits=[0,1/2], step_size=0.1, num_steps=20)
︡67bb5170-3ea5-4950-8ada-fc1760cf0d28︡{"stdout":"(2.00000000000000, 1356.58456812420)\n"}︡
︠c5386fc0-a2f8-459d-b1a8-01811cd5a970︠
euler_method(x^2+y^2, inits=[0,1/2], step_size=0.05, num_steps=40)
︡25b63698-f6a5-456f-9ffd-cd64ab5f426f︡{"stdout":"(2.00000000000000, 1.04789991595183e32)\n"}︡
︠1d3abf93-83c6-4055-b315-97441808e34e︠
euler_method(x^2+y^2, inits=[0,1/2], step_size=0.01, num_steps=200)
︡b97e0982-67ce-4b94-b6d6-067e7be26ad6︡{"stdout":"(2.00000000000000, 2.04905894958124e800687038793)\n"}︡
︠622a7ada-98d9-4523-a8d6-f0ae947cdd55︠
euler_method(x^2+y^2, inits=[0,1/2], step_size=0.005, num_steps=400)
︡471826dd-900b-4402-8825-9c50d9433b78︡{"stdout":"(1.99999999999998, +infinity)\n"}︡
︠cff7a106-0efc-4af2-a1fc-4aa4dbb9b859︠


plot_slope_field(x^2+y^2, (x,0,3),(y,0,5))
︡51fa474a-14c9-4f73-b84b-d24d988be9b3︡{"once":false,"file":{"show":true,"uuid":"384378d1-896b-457b-9ecc-c29b507cbf8d","filename":"/projects/99a225b5-ae43-48ba-b7cd-db937520c08b/.sage/temp/compute4-us/30821/tmp_HWrlbJ.svg"}}︡{"html":"<div align='center'></div>"}︡
︠c871ada4-9956-437b-bb2b-80e12915885b︠









