︠8fd60522-7ec5-41d8-9592-fb7361e46cc7︠
x, y = var('x y')

def heun_method(expr, inits=[0,1], step_size=0.1, num_steps=10):
    xs, ys = [inits[0]], [inits[1]]
    zs = [ ]
    m = [ ]
    for k in range(num_steps):
        xcurr = xs[-1]
        ycurr = ys[-1]
        guess_slope = expr(x=xcurr,y=ycurr)
        xnext, znext = xcurr + step_size, ycurr + guess_slope*step_size # This is the Predictor step. Use Euler's method.

        next_slope = expr(x=xnext, y=znext)
        avg_slope = 1/2 * (guess_slope + next_slope)
        ynext = ycurr + avg_slope*step_size  # This is the corrector step. Find slope at predicted point and average.

        xs.append(xnext)
        ys.append(ynext)



    print zip(xs,ys)[-1]
︡59e7b547-7552-437b-9167-d9862ea31ec2︡
︠30412d4e-3dd3-480d-a2f8-d50c76a80c1ci︠
%md
Now we will try out the method on our toy problem:
\[ y' = \cos(x\cdot y), \qquad y(0)=1/2 \]
We try to approximate $y(2)$.
︡9e935474-8de5-4d8e-a2f6-4441b4e2a519︡{"md":"Now we will try out the method on our toy problem:\n\\[ y' = \\cos(x\\cdot y), \\qquad y(0)=1/2 \\] \nWe try to approximate $y(2)$.\n"}︡
︠9e77fee7-aa70-4c5c-954c-efa4d4358490︠
heun_method(cos(x*y), inits=[0,1/2], step_size=0.1,num_steps=20)
︡3a409ed0-aad3-4d28-b005-9b6bff4f0f0a︡{"stdout":"(2.00000000000000, 1.04439134074710)\n"}︡
︠ee3a65d2-46c4-4169-a0f7-5264fc2e685d︠
heun_method(cos(x*y), inits=[0,1/2], step_size=0.05,num_steps=40)
︡46605dbb-dca1-4864-8905-1e488e222ea3︡{"stdout":"(2.00000000000000, 1.04515268673943)\n"}︡
︠f1a0a8d3-bb30-4d8a-a939-8256153491e2︠
heun_method(cos(x*y), inits=[0,1/2], step_size=0.01, num_steps=200)
︡c6adfb80-f2ef-4607-8f9f-7c29691c2b09︡{"stdout":"(2.00000000000000, 1.04537225915994)\n"}︡
︠18d9aa4e-41e9-480d-80eb-81ad12d83262︠
heun_method(cos(x*y), inits=[0,1/2], step_size=0.001, num_steps=2000)

︡6032b4d3-fdb0-4ab9-9810-2539f1b48012︡{"stdout":"(1.99999999999989, 1.04538074185418)"}︡{"stdout":"\n"}︡
︠c31b8eca-194a-4f06-8f82-6c87fd58d7a4i︠
%md
And now we try it on the newer problem:
\[ y' = x^2 + y^2, \qquad y(0)=1/2  \]
We try to approximate $y(2)$.
︡ea425dda-d23d-43ee-a169-de58ee17409e︡{"md":"And now we try it on the newer problem:\n\\[ y' = x^2 + y^2, \\qquad y(0)=1/2  \\]\nWe try to approximate $y(2)$.\n"}︡
︠3bf20b13-1470-421d-b696-416584e937e0︠
heun_method(x^2+y^2, inits=[0,1/2], step_size=0.5, num_steps=4)

︡8b19d917-fc65-4c82-bf73-a801fb626840︡{"stdout":"(2.00000000000000, 109.774303325372)\n"}︡
︠59e18bda-8f96-4b62-96ac-e7f9f4934ae3︠
heun_method(x^2+y^2, inits=[0,1/2], step_size=0.1, num_steps=20)
︡06e770ec-2693-429b-9a14-e347b6c154d2︡{"stdout":"(2.00000000000000, 3.97474983014540e193)\n"}︡
︠c5386fc0-a2f8-459d-b1a8-01811cd5a970︠
heun_method(x^2+y^2, inits=[0,1/2], step_size=0.05, num_steps=40)
︡d7e51ee1-2f80-4ef7-a9b3-77110403e48b︡{"stdout":"(2.00000000000000, 3.58820441447503e97203)\n"}︡
︠1d3abf93-83c6-4055-b315-97441808e34e︠
heun_method(x^2+y^2, inits=[0,1/2], step_size=0.01, num_steps=200)
︡9594e0d5-644a-418f-8251-f5b239cdab87︡{"stdout":"(2.00000000000000, +infinity)\n"}︡
︠622a7ada-98d9-4523-a8d6-f0ae947cdd55︠
heun_method(x^2+y^2, inits=[0,1/2], step_size=0.005, num_steps=400)
︡e2cba302-6431-42ad-9e94-e4160a82b8a7︡{"stdout":"(1.99999999999998, +infinity)"}︡{"stdout":"\n"}︡
︠cff7a106-0efc-4af2-a1fc-4aa4dbb9b859︠


plot_slope_field(x^2+y^2, (x,0,3),(y,0,5))
︡51fa474a-14c9-4f73-b84b-d24d988be9b3︡{"once":false,"file":{"show":true,"uuid":"384378d1-896b-457b-9ecc-c29b507cbf8d","filename":"/projects/99a225b5-ae43-48ba-b7cd-db937520c08b/.sage/temp/compute4-us/30821/tmp_HWrlbJ.svg"}}︡{"html":"<div align='center'></div>"}︡
︠c871ada4-9956-437b-bb2b-80e12915885b︠









