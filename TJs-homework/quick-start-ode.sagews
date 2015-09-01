︠1c5d42e6-a908-4a11-af8b-9fe7602452bai︠
%md
Here I follow the Sage Quickstart for Differential Equations
︡5658de8d-5a4a-4250-8f5d-da091812cf59︡{"md":"Here I follow the Sage Quickstart for Differential Equations\n"}︡
︠297814b8-2c45-4c7c-a9dd-a19c6e2a4757︠
y = function('y',x)
de = diff(y,x) + y - 2
h = desolve(de, y)
︡3325ac64-05bb-4d67-bf9c-10ac7eadc168︡
︠12b47ec4-19d7-4694-a76e-804baca88004︠
show(expand(h))
︡537ef1c5-afb1-4558-9bb9-34bad969b9e4︡{"html":"<div align='center'>$\\displaystyle C e^{\\left(-x\\right)} + 2$</div>"}︡
︠8a9ad18a-7b80-42e4-a94e-741d85f36e66︠
h =desolve(de, y, ics=[0,3]); h
︡f74cde20-4921-4188-a34c-26da76d1dd68︡{"stdout":"(2*e^x + 1)*e^(-x)\n"}︡
︠91a4e535-fccb-49ee-af2a-e7bc8bba8af9︠
y = var('y')
Plot1 = plot_slope_field(2-y,(x,0,3),(y,0,5))
Plot2 = plot(h,x,0,3)
Plot1+Plot2
︡8a93d1d9-bbc6-4655-8f07-5b026e1d8c5f︡{"once":false,"file":{"show":true,"uuid":"dfb3490d-e05a-46fb-b017-db237785996c","filename":"/projects/99a225b5-ae43-48ba-b7cd-db937520c08b/.sage/temp/compute4-us/974/tmp_LW4pdY.svg"}}︡{"html":"<div align='center'></div>"}︡
︠deb16552-3a18-41c0-a03e-ba96b90f7747i︠
%md
----

---

----
︡081a076c-6b9b-45a8-a838-4187c8cadc8c︡{"md":"----\n\n---\n\n----\n"}︡
︠b1594b8f-b5a6-42de-bbbb-cd1d094f4f18︠
desolve?

︠776bfca1-8547-4a63-a90b-776490d23a68︠

f = function('f',x)
desolve_laplace(diff(f,x,2) == 2*diff(f,x) - f, dvar = f, ics = [0,1,2])
︡63dfa10b-2ea2-405a-bc0e-9e189d34c915︡{"stdout":"x*e^x + e^x\n"}︡
︠4241a536-d9b7-462a-bfc9-c8d66b9482bf︠
g(x) = x*e^x +e^x
derivative(g,x,2)-2*derivative(g,x)+g
︡5562651b-8bf7-4626-9818-edf683ee503a︡{"stdout":"x |--> 0\n"}︡
︠3bb6ce19-9d78-43d3-be99-9437bc5e1e4fi︠
%md
## Numerical Methods
︡767d92ea-6ceb-49de-9847-7f28e7458e41︡{"md":"## Numerical Methods\n"}︡
︠39f9eca5-3991-4e8c-b291-b5953e40addd︠

y = function('y',x)
de = diff(y,x) + y -2
h = desolve_rk4(de, y, step=0.5, ics=[0,3])
︡b1f14992-2838-4624-a9b2-235b4a013c6a︡
︠ddffb356-3aeb-4da5-a7ee-84319915a8ac︠
h1 = desolve(de, y, ics=[0,3])
plot(h1,(x,0,5),color='red')+points(h)
︡60e17785-427a-4ded-a25b-1323507cdc80︡{"once":false,"file":{"show":true,"uuid":"67037314-ac2c-4531-980e-0523857faeaf","filename":"/projects/99a225b5-ae43-48ba-b7cd-db937520c08b/.sage/temp/compute4-us/974/tmp_pYOQ3r.svg"}}︡{"html":"<div align='center'></div>"}︡
︠e031c606-d0b8-48ed-b76b-01876e2f3eef︠
# for fancier numerical methods, use these

ode_solver??

︠1a41efb7-fd22-48c9-8324-abda1f0c540ci︠


%md
## Power Series Methods

︡623a8167-8d48-4e43-8a23-1c13d96af59c︡{"md":"## Power Series Methods\n\n"}︡
︠b453918c-a125-4ed9-b2c2-8e929bc059dc︠
# see the documentation in the next cell for what is going on here...

R.<t> = PowerSeriesRing(QQ, default_prec=10)
a = -1 +0*t
b = 2 + 0*t
h = a.solve_linear_de(b=b,f0=3,prec=10)
︡8d816e48-8c91-49b4-8c9d-28fcceabb429︡
︠45f1ef17-62fb-4d5e-b915-3d70c2990b37︠
a.solve_linear_de?
︠a45b434d-244f-40a0-a422-97c84b51232a︠
h = h.polynomial()
plot(h,-2,5)+plot(2+e^(-x),(x,-2,5),color='red',linestyle=':',thickness=3)
︡a7a03a75-9dae-4325-9b95-2b99c9e25bfd︡{"once":false,"file":{"show":true,"uuid":"a1aa4100-790c-4797-be3f-e96f554f9238","filename":"/projects/99a225b5-ae43-48ba-b7cd-db937520c08b/.sage/temp/compute4-us/974/tmp_9PUa5w.svg"}}︡{"html":"<div align='center'></div>"}︡
︠5d712c69-773d-46e6-a0ea-0086c0afe14b︠









