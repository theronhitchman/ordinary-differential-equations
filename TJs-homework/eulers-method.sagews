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
︡1d0b6309-f6c8-4a53-9721-94b8c5c46c92︡
︠30412d4e-3dd3-480d-a2f8-d50c76a80c1cis︠
%md
Now we will try out the method on our toy problem:
\[ y' = \cos(x\cdot y), \qquad y(0)=1/2 \]
We try to approximate $y(2)$.
︡9e935474-8de5-4d8e-a2f6-4441b4e2a519︡{"md":"Now we will try out the method on our toy problem:\n\\[ y' = \\cos(x\\cdot y), \\qquad y(0)=1/2 \\] \nWe try to approximate $y(2)$.\n"}︡
︠9e77fee7-aa70-4c5c-954c-efa4d4358490s︠
euler_method(cos(x*y), inits=[0,1/2], step_size=0.1,num_steps=20)
︡bfa972c3-dec0-4927-85fa-9b1ba27a5ebe︡{"stdout":"(2.00000000000000, 1.06856192530680)\n"}︡
︠ee3a65d2-46c4-4169-a0f7-5264fc2e685ds︠
euler_method(cos(x*y), inits=[0,1/2], step_size=0.05,num_steps=40)
︡6c1ed4b0-5ffc-4611-9517-b98b7db0b8be︡{"stdout":"(2.00000000000000, 1.05676530611386)\n"}︡
︠c31b8eca-194a-4f06-8f82-6c87fd58d7a4is︠
%md
And now we try it on the newer problem:
\[ y' = x^2 + y^2, \qquad y(0)=1/2  \]
We try to approximate $y(2)$.
︡ea425dda-d23d-43ee-a169-de58ee17409e︡{"md":"And now we try it on the newer problem:\n\\[ y' = x^2 + y^2, \\qquad y(0)=1/2  \\]\nWe try to approximate $y(2)$.\n"}︡
︠3bf20b13-1470-421d-b696-416584e937e0s︠
euler_method(x^2+y^2, inits=[0,1/2], step_size=0.5, num_steps=4)

︡a1f7e47c-6eaf-4462-b2f1-1467127558f8︡{"stdout":"(2.00000000000000, 4.80718009220436)\n"}︡
︠59e18bda-8f96-4b62-96ac-e7f9f4934ae3s︠
euler_method(x^2+y^2, inits=[0,1/2], step_size=0.1, num_steps=20)
︡67bb5170-3ea5-4950-8ada-fc1760cf0d28︡{"stdout":"(2.00000000000000, 1356.58456812420)\n"}︡
︠c5386fc0-a2f8-459d-b1a8-01811cd5a970s︠
euler_method(x^2+y^2, inits=[0,1/2], step_size=0.05, num_steps=40)
︡25b63698-f6a5-456f-9ffd-cd64ab5f426f︡{"stdout":"(2.00000000000000, 1.04789991595183e32)\n"}︡
︠1d3abf93-83c6-4055-b315-97441808e34es︠
euler_method(x^2+y^2, inits=[0,1/2], step_size=0.01, num_steps=200)
︡b97e0982-67ce-4b94-b6d6-067e7be26ad6︡{"stdout":"(2.00000000000000, 2.04905894958124e800687038793)\n"}︡
︠622a7ada-98d9-4523-a8d6-f0ae947cdd55s︠
euler_method(x^2+y^2, inits=[0,1/2], step_size=0.005, num_steps=400)
︡471826dd-900b-4402-8825-9c50d9433b78︡{"stdout":"(1.99999999999998, +infinity)\n"}︡
︠cff7a106-0efc-4af2-a1fc-4aa4dbb9b859︠









