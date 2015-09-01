︠8fd60522-7ec5-41d8-9592-fb7361e46cc7s︠
x, y = var('x y')

def two_term_method(expr, inits=[0,1], step_size=0.1, num_steps=10):
    xs, ys = [inits[0]], [inits[1]]
    m = [ ]
    first_order_taylor = diff(expr, x) + diff(expr,y)*expr

    for k in range(0,num_steps):
        xcurr = xs[-1]
        ycurr = ys[-1]
        ynext = ycurr + step_size*expr(x=xcurr,y=ycurr) + 0.5*(step_size^2)*first_order_taylor(x=xcurr,y=ycurr)
        xs.append(xcurr+step_size)
        ys.append(ynext)
    print zip(xs,ys)[-1]
︡d158356e-bc93-4b61-a9de-0ed17327d7c1︡
︠30412d4e-3dd3-480d-a2f8-d50c76a80c1ci︠
%md
Now we will try out the method on our toy problem:
\[ y' = \cos(x\cdot y), \qquad y(0)=1/2 \]
We try to approximate $y(2)$.
︡9e935474-8de5-4d8e-a2f6-4441b4e2a519︡{"md":"Now we will try out the method on our toy problem:\n\\[ y' = \\cos(x\\cdot y), \\qquad y(0)=1/2 \\] \nWe try to approximate $y(2)$.\n"}︡
︠9e77fee7-aa70-4c5c-954c-efa4d4358490s︠
two_term_method(cos(x*y), inits=[0,1/2], step_size=0.1,num_steps=20)
︡cb06c726-6b47-4c78-8194-708f3916e555︡{"stdout":"(2.00000000000000, 1.04456462953565)\n"}︡
︠ee3a65d2-46c4-4169-a0f7-5264fc2e685ds︠
two_term_method(cos(x*y), inits=[0,1/2], step_size=0.05,num_steps=40)
︡a68c504b-23e8-439e-93e3-ca7c71bcfba5︡{"stdout":"(2.00000000000000, 1.04518768318514)\n"}︡
︠f1a0a8d3-bb30-4d8a-a939-8256153491e2s︠
two_term_method(cos(x*y), inits=[0,1/2], step_size=0.01, num_steps=200)
︡b0fa5ee3-976c-4138-84ff-0434a119ed13︡{"stdout":"(2.00000000000000, 1.04537343217651)"}︡{"stdout":"\n"}︡
︠18d9aa4e-41e9-480d-80eb-81ad12d83262s︠
two_term_method(cos(x*y), inits=[0,1/2], step_size=0.001, num_steps=2000)

︡33749a56-77ab-466c-b8f7-337892f83cdf︡{"stdout":"(1.99999999999989, 1.04538075311769)"}︡{"stdout":"\n"}︡
︠c31b8eca-194a-4f06-8f82-6c87fd58d7a4i︠
%md
And now we try it on the newer problem:
\[ y' = x^2 + y^2, \qquad y(0)=1/2  \]
We try to approximate $y(2)$.
︡ea425dda-d23d-43ee-a169-de58ee17409e︡{"md":"And now we try it on the newer problem:\n\\[ y' = x^2 + y^2, \\qquad y(0)=1/2  \\]\nWe try to approximate $y(2)$.\n"}︡
︠3bf20b13-1470-421d-b696-416584e937e0s︠
two_term_method(x^2+y^2, inits=[0,1/2], step_size=0.5, num_steps=4)

︡2993e78e-03ed-4e26-9cd9-2f384916dbeb︡{"stdout":"(2.00000000000000, 24.1122975439697)\n"}︡
︠59e18bda-8f96-4b62-96ac-e7f9f4934ae3s︠
two_term_method(x^2+y^2, inits=[0,1/2], step_size=0.1, num_steps=20)
︡e334640d-0f19-4526-ab40-8b9ddc7ef46a︡{"stdout":"(2.00000000000000, 4.47249727392626e48)\n"}︡
︠c5386fc0-a2f8-459d-b1a8-01811cd5a970s︠
two_term_method(x^2+y^2, inits=[0,1/2], step_size=0.05, num_steps=40)
︡e324579f-3132-4644-a1cd-cce19e31e85d︡{"stdout":"(2.00000000000000, 9.46138402541748e6593)\n"}︡
︠1d3abf93-83c6-4055-b315-97441808e34es︠
two_term_method(x^2+y^2, inits=[0,1/2], step_size=0.01, num_steps=200)
︡429a7e3a-ec8a-4409-815c-0ab8bb0a152a︡{"stdout":"(2.00000000000000, +infinity)\n"}︡
︠622a7ada-98d9-4523-a8d6-f0ae947cdd55s︠
two_term_method(x^2+y^2, inits=[0,1/2], step_size=0.005, num_steps=400)
︡aa5de622-2426-4adf-96fa-f94e6fc4ef27︡{"stdout":"(1.99999999999998, +infinity)"}︡{"stdout":"\n"}︡
︠cff7a106-0efc-4af2-a1fc-4aa4dbb9b859︠


plot_slope_field(x^2+y^2, (x,0,3),(y,0,5))
︡51fa474a-14c9-4f73-b84b-d24d988be9b3︡{"once":false,"file":{"show":true,"uuid":"384378d1-896b-457b-9ecc-c29b507cbf8d","filename":"/projects/99a225b5-ae43-48ba-b7cd-db937520c08b/.sage/temp/compute4-us/30821/tmp_HWrlbJ.svg"}}︡{"html":"<div align='center'></div>"}︡
︠ed93f2f0-d286-45ba-878d-7c1669458f0as︠
var('x z')
z = function('z',x)
de = diff(z,x) == cos(x*z)
desolve(de, z, ics=[0,1/2]); z
︡8532a319-e51f-4a86-bff0-28d5fb7a1ce4︡{"stdout":"(x, z)\n"}︡{"stderr":"Error in lines 4-4\nTraceback (most recent call last):\n  File \"/projects/99a225b5-ae43-48ba-b7cd-db937520c08b/.sagemathcloud/sage_server.py\", line 879, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"/projects/sage/sage-6.7/local/lib/python2.7/site-packages/sage/calculus/desolvers.py\", line 470, in desolve\n    raise NotImplementedError(\"Maxima was unable to solve this ODE. Consider to set option contrib_ode to True.\")\nNotImplementedError: Maxima was unable to solve this ODE. Consider to set option contrib_ode to True.\n"}︡
︠c871ada4-9956-437b-bb2b-80e12915885bs︠
ode_solver??
︡4a1946c2-6a73-45d3-aca8-a27b3fd52bb6︡{"code":{"source":"   File: /projects/sage/sage-6.7/src/sage/gsl/ode.pyx\n   Source:\n   class ode_solver(object):\n    r\"\"\"\n    :meth:`ode_solver` is a class that wraps the GSL libraries ode\n    solver routines To use it instantiate a class,::\n\n        sage: T=ode_solver()\n\n    To solve a system of the form ``dy_i/dt=f_i(t,y)``, you must\n    supply a vector or tuple/list valued function ``f`` representing\n    ``f_i``.  The functions ``f`` and the jacobian should have the\n    form ``foo(t,y)`` or ``foo(t,y,params)``.  ``params`` which is\n    optional allows for your function to depend on one or a tuple of\n    parameters.  Note if you use it, ``params`` must be a tuple even\n    if it only has one component.  For example if you wanted to solve\n    `y''+y=0`. You need to write it as a first order system::\n\n        y_0' = y_1\n        y_1' = -y_0\n\n    In code::\n\n        sage: f = lambda t,y:[y[1],-y[0]]\n        sage: T.function=f\n\n    For some algorithms the jacobian must be supplied as well, the\n    form of this should be a function return a list of lists of the\n    form ``[ [df_1/dy_1,...,df_1/dy_n], ...,\n    [df_n/dy_1,...,df_n,dy_n], [df_1/dt,...,df_n/dt] ]``.\n\n    There are examples below, if your jacobian was the function\n    ``my_jacobian`` you would do::\n\n        sage: T.jacobian = my_jacobian     # not tested, since it doesn't make sense to test this\n\n    There are a variety of algorithms available for different types of systems. Possible algorithms are\n\n    - ``rkf45`` - runga-kutta-felhberg (4,5)\n\n    - ``rk2`` - embedded runga-kutta (2,3)\n\n    - ``rk4`` - 4th order classical runga-kutta\n\n    - ``rk8pd`` - runga-kutta prince-dormand (8,9)\n\n    - ``rk2imp`` - implicit 2nd order runga-kutta at gaussian points\n\n    - ``rk4imp`` - implicit 4th order runga-kutta at gaussian points\n\n    - ``bsimp`` - implicit burlisch-stoer (requires jacobian)\n\n    - ``gear1`` - M=1 implicit gear\n\n    - ``gear2`` - M=2 implicit gear\n\n    The default algorithm is ``rkf45``. If you instead wanted to use\n    ``bsimp`` you would do::\n\n        sage: T.algorithm=\"bsimp\"\n\n    The user should supply initial conditions in y_0. For example if\n    your initial conditions are y_0=1,y_1=1, do::\n\n        sage: T.y_0=[1,1]\n\n    The actual solver is invoked by the method :meth:`ode_solve`.  It\n    has arguments ``t_span``, ``y_0``, ``num_points``, ``params``.\n    ``y_0`` must be supplied either as an argument or above by\n    assignment.  Params which are optional and only necessary if your\n    system uses params can be supplied to ``ode_solve`` or by\n    assignment.\n\n    ``t_span`` is the time interval on which to solve the ode.  There\n    are two ways to specify ``t_span``:\n\n    * If ``num_points`` is not specified then the sequence ``t_span``\n      is used as the time points for the solution.  Note that the\n      first element ``t_span[0]`` is the initial time, where the\n      initial condition ``y_0`` is the specified solution, and\n      subsequent elements are the ones where the solution is computed.\n\n    * If ``num_points`` is specified and ``t_span`` is a sequence with\n      just 2 elements, then these are the starting and ending times,\n      and the solution will be computed at ``num_points`` equally\n      spaced points between ``t_span[0]`` and ``t_span[1]``.  The\n      initial condition is also included in the output so that\n      ``num_points``\\ +1 total points are returned.  E.g. if ``t_span\n      = [0.0, 1.0]`` and ``num_points = 10``, then solution is\n      returned at the 11 time points ``[0.0, 0.1, 0.2, 0.3, 0.4, 0.5,\n      0.6, 0.7, 0.8, 0.9, 1.0]``\\ .\n\n    (Note that if ``num_points`` is specified and ``t_span`` is not\n    length 2 then ``t_span`` are used as the time points and\n    ``num_points`` is ignored.)\n\n    Error is estimated via the expression ``D_i =\n    error_abs*s_i+error_rel*(a|y_i|+a_dydt*h*|y_i'|)``.  The user can\n    specify ``error_abs`` (1e-10 by default), ``error_rel`` (1e-10 by\n    default) ``a`` (1 by default), ``a_(dydt)`` (0 by default) and\n    ``s_i`` (as scaling_abs which should be a tuple and is 1 in all\n    components by default).  If you specify one of ``a`` or ``a_dydt``\n    you must specify the other.  You may specify ``a`` and ``a_dydt``\n    without ``scaling_abs`` (which will be taken =1 be default).\n    ``h`` is the initial step size which is (1e-2) by default.\n\n    ``ode_solve`` solves the solution as a list of tuples of the form,\n    ``[ (t_0,[y_1,...,y_n]),(t_1,[y_1,...,y_n]),...,(t_n,[y_1,...,y_n])]``.\n\n    This data is stored in the variable solutions::\n\n        sage: T.solution               # not tested\n\n    EXAMPLES:\n\n    Consider solving the Van der Pol oscillator `x''(t) +\n    ux'(t)(x(t)^2-1)+x(t)=0` between `t=0` and `t= 100`.  As a first\n    order system it is `x'=y`, `y'=-x+uy(1-x^2)`. Let us take `u=10`\n    and use initial conditions `(x,y)=(1,0)` and use the runga-kutta\n    prince-dormand algorithm. ::\n\n        sage: def f_1(t,y,params):\n        ...      return[y[1],-y[0]-params[0]*y[1]*(y[0]**2-1.0)]\n\n        sage: def j_1(t,y,params):\n        ...      return [ [0.0, 1.0],[-2.0*params[0]*y[0]*y[1]-1.0,-params[0]*(y[0]*y[0]-1.0)], [0.0, 0.0] ]\n\n        sage: T=ode_solver()\n        sage: T.algorithm=\"rk8pd\"\n        sage: T.function=f_1\n        sage: T.jacobian=j_1\n        sage: T.ode_solve(y_0=[1,0],t_span=[0,100],params=[10.0],num_points=1000)\n        sage: outfile = os.path.join(SAGE_TMP, 'sage.png')\n        sage: T.plot_solution(filename=outfile)\n\n    The solver line is equivalent to::\n\n        sage: T.ode_solve(y_0=[1,0],t_span=[x/10.0 for x in range(1000)],params = [10.0])\n\n    Let's try a system::\n\n        y_0'=y_1*y_2\n        y_1'=-y_0*y_2\n        y_2'=-.51*y_0*y_1\n\n    We will not use the jacobian this time and will change the\n    error tolerances. ::\n\n        sage: g_1= lambda t,y: [y[1]*y[2],-y[0]*y[2],-0.51*y[0]*y[1]]\n        sage: T.function=g_1\n        sage: T.y_0=[0,1,1]\n        sage: T.scale_abs=[1e-4,1e-4,1e-5]\n        sage: T.error_rel=1e-4\n        sage: T.ode_solve(t_span=[0,12],num_points=100)\n\n    By default T.plot_solution() plots the y_0, to plot general y_i use::\n\n        sage: T.plot_solution(i=0, filename=outfile)\n        sage: T.plot_solution(i=1, filename=outfile)\n        sage: T.plot_solution(i=2, filename=outfile)\n\n    The method interpolate_solution will return a spline interpolation\n    through the points found by the solver. By default y_0 is\n    interpolated.  You can interpolate y_i through the keyword\n    argument i. ::\n\n        sage: f = T.interpolate_solution()\n        sage: plot(f,0,12).show()\n        sage: f = T.interpolate_solution(i=1)\n        sage: plot(f,0,12).show()\n        sage: f = T.interpolate_solution(i=2)\n        sage: plot(f,0,12).show()\n        sage: f = T.interpolate_solution()\n        sage: f(pi)\n        0.5379...\n\n    The solver attributes may also be set up using arguments to\n    ode_solver.  The previous example can be rewritten as::\n\n        sage: T = ode_solver(g_1,y_0=[0,1,1],scale_abs=[1e-4,1e-4,1e-5],error_rel=1e-4, algorithm=\"rk8pd\")\n        sage: T.ode_solve(t_span=[0,12],num_points=100)\n        sage: f = T.interpolate_solution()\n        sage: f(pi)\n        0.5379...\n\n    Unfortunately because Python functions are used, this solver\n    is slow on systems that require many function evaluations.  It\n    is possible to pass a compiled function by deriving from the\n    class ``ode_sysem`` and overloading ``c_f`` and ``c_j`` with C\n    functions that specify the system. The following will work in the\n    notebook:\n\n    .. code-block:: cython\n\n          %cython\n          cimport sage.gsl.ode\n          import sage.gsl.ode\n          include 'gsl.pxi'\n\n          cdef class van_der_pol(sage.gsl.ode.ode_system):\n              cdef int c_f(self,double t, double *y,double *dydt):\n                  dydt[0]=y[1]\n                  dydt[1]=-y[0]-1000*y[1]*(y[0]*y[0]-1)\n                  return GSL_SUCCESS\n              cdef int c_j(self, double t,double *y,double *dfdy,double *dfdt):\n                  dfdy[0]=0\n                  dfdy[1]=1.0\n                  dfdy[2]=-2.0*1000*y[0]*y[1]-1.0\n                  dfdy[3]=-1000*(y[0]*y[0]-1.0)\n                  dfdt[0]=0\n                  dfdt[1]=0\n                  return GSL_SUCCESS\n\n    After executing the above block of code you can do the\n    following (WARNING: the following is *not* automatically\n    doctested)::\n\n        sage: T = ode_solver()                     # not tested\n        sage: T.algorithm = \"bsimp\"                # not tested\n        sage: vander = van_der_pol()               # not tested\n        sage: T.function=vander                    # not tested\n        sage: T.ode_solve(y_0 = [1,0], t_span=[0,2000], num_points=1000)   # not tested\n        sage: T.plot_solution(i=0, filename=os.path.join(SAGE_TMP, 'test.png'))        # not tested\n\n\n    \"\"\"\n    def __init__(self,function=None,jacobian=None,h = 1e-2,error_abs=1e-10,error_rel=1e-10, a=False,a_dydt=False,scale_abs=False,algorithm=\"rkf45\",y_0=None,t_span=None,params = []):\n        self.function = function\n        self.jacobian = jacobian\n        self.h = h\n        self.error_abs = error_abs\n        self.error_rel = error_rel\n        self.a = a\n        self.a_dydt = a_dydt\n        self.scale_abs = scale_abs\n        self.algorithm = algorithm\n        self.y_0 = y_0\n        self.t_span = t_span\n        self.params = params\n        self.solution = []\n\n    def __setattr__(self,name,value):\n        if(hasattr(self,'solution')):\n            object.__setattr__(self,'solution',[])\n        object.__setattr__(self,name,value)\n\n    def interpolate_solution(self,i=0):\n        l=eval('[ (x[0],x[1][i]) for x in solution]',{'solution':self.solution,'i':i})\n        return sage.gsl.interpolation.spline(l)\n\n\n    def plot_solution(self, i=0, filename=None, interpolate=False):\n        from sage.plot.all import plot, point\n        points=[]\n        for x in self.solution:\n            points.append(point((x[0],x[1][i])))\n        t = plot(points)\n        if filename is None:\n            t.show()\n        else:\n            t.save(filename=filename)\n\n    def ode_solve(self,t_span=False,y_0=False,num_points=False,params=[]):\n        import inspect\n        cdef double h # step size\n        h=self.h\n        cdef int i\n        cdef int j\n        cdef int type\n        cdef int dim\n        cdef PyFunctionWrapper wrapper #struct to pass information into GSL C function\n        self.params=params\n\n        if t_span != False:\n            self.t_span = t_span\n        if y_0 != False:\n            self.y_0 = y_0\n\n        dim = len(self.y_0)\n        type = isinstance(self.function,ode_system)\n        if type == 0:\n            wrapper = PyFunctionWrapper()\n            if self.function is not None:\n                wrapper.the_function = self.function\n            else:\n                raise ValueError, \"ODE system not yet defined\"\n            if self.jacobian is None:\n                wrapper.the_jacobian = None\n            else:\n                wrapper.the_jacobian = self.jacobian\n            if self.params==[] and len(inspect.getargspec(wrapper.the_function)[0])==2:\n                wrapper.the_parameters=[]\n            elif self.params==[] and len(inspect.getargspec(wrapper.the_function)[0])>2:\n                raise ValueError, \"ODE system has a parameter but no parameters specified\"\n            elif self.params!=[]:\n                wrapper.the_parameters = self.params\n            wrapper.y_n = dim\n\n\n        cdef double t\n        cdef double t_end\n        cdef double *y\n        cdef double * scale_abs_array\n        scale_abs_array=NULL\n\n        y= <double*> sage_malloc(sizeof(double)*(dim))\n        if y==NULL:\n            raise MemoryError,\"error allocating memory\"\n        result=[]\n        v=[0]*dim\n        cdef gsl_odeiv_step_type * T\n\n        for i from 0 <=i< dim: #copy initial conditions into C array\n            y[i]=self.y_0[i]\n\n        if self.algorithm == \"rkf45\":\n            T=gsl_odeiv_step_rkf45\n        elif self.algorithm == \"rk2\":\n            T=gsl_odeiv_step_rk2\n        elif self.algorithm == \"rk4\":\n            T=gsl_odeiv_step_rk4\n        elif self.algorithm == \"rkck\":\n            T=gsl_odeiv_step_rkck\n        elif self.algorithm == \"rk8pd\":\n            T=gsl_odeiv_step_rk8pd\n        elif self.algorithm == \"rk2imp\":\n            T= gsl_odeiv_step_rk2imp\n        elif self.algorithm == \"rk4imp\":\n            T= gsl_odeiv_step_rk4imp\n        elif self.algorithm == \"bsimp\":\n            T = gsl_odeiv_step_bsimp\n            if not type and self.jacobian is None:\n                raise TypeError,\"The jacobian must be provided for the implicit Burlisch-Stoer method\"\n        elif self.algorithm == \"gear1\":\n            T = gsl_odeiv_step_gear1\n        elif self.algorithm == \"gear2\":\n            T = gsl_odeiv_step_gear2\n        else:\n            raise TypeError,\"algorithm not valid\"\n\n\n        cdef gsl_odeiv_step * s\n        s  = gsl_odeiv_step_alloc (T, dim)\n        if s==NULL:\n            sage_free(y)\n            raise MemoryError, \"error setting up solver\"\n\n\n        cdef gsl_odeiv_control * c\n\n        if self.a == False and self.a_dydt==False:\n            c  = gsl_odeiv_control_y_new (self.error_abs, self.error_rel)\n        elif self.a !=False and self.a_dydt != False:\n            if self.scale_abs==False:\n                c = gsl_odeiv_control_standard_new(self.error_abs,self.error_rel,self.a,self.a_dydt)\n            elif hasattr(self.scale_abs,'__len__'):\n                if len(self.scale_abs)==dim:\n                    scale_abs_array =<double *> sage_malloc(dim*sizeof(double))\n                    for i from 0 <=i<dim:\n                        scale_abs_array[i]=self.scale_abs[i]\n                    c = gsl_odeiv_control_scaled_new(self.error_abs,self.error_rel,self.a,self.a_dydt,scale_abs_array,dim)\n\n        if c == NULL:\n            gsl_odeiv_control_free (c)\n            gsl_odeiv_step_free (s)\n            sage_free(y)\n            sage_free(scale_abs_array)\n            raise MemoryError, \"error setting up solver\"\n\n\n        cdef gsl_odeiv_evolve * e\n        e  = gsl_odeiv_evolve_alloc(dim)\n\n        if e == NULL:\n            gsl_odeiv_control_free (c)\n            gsl_odeiv_step_free (s)\n            sage_free(y)\n            sage_free(scale_abs_array)\n            raise MemoryError, \"error setting up solver\"\n\n\n        cdef gsl_odeiv_system sys\n        if type:               # The user has passed a class with a compiled function, use that for the system\n            sys.function = c_f_compiled\n            sys.jacobian = c_jac_compiled\n#         (<ode_system>self.function).the_parameters = self.params\n            sys.params = <void *> self.function\n        else:                  # The user passed a python function.\n            sys.function = c_f\n            sys.jacobian = c_jac\n            sys.params = <void *> wrapper\n        sys.dimension = dim\n\n\n        cdef int status\n        import copy\n        cdef int n\n\n        if len(self.t_span)==2 and num_points!=False:\n            try:\n                n = num_points\n            except TypeError:\n                gsl_odeiv_evolve_free (e)\n                gsl_odeiv_control_free (c)\n                gsl_odeiv_step_free (s)\n                sage_free(y)\n                sage_free(scale_abs_array)\n                raise TypeError,\"numpoints must be integer\"\n            result.append( (self.t_span[0],self.y_0))\n            delta = (self.t_span[1]-self.t_span[0])/(1.0*num_points)\n            t =self.t_span[0]\n            t_end=self.t_span[0]+delta\n            for i from 0<i<=n:\n                while (t < t_end):\n                    try:\n                        sig_on()\n                        status = gsl_odeiv_evolve_apply (e, c, s, &sys, &t, t_end, &h, y)\n                        sig_off()\n                        if (status != GSL_SUCCESS):\n                            raise RuntimeError\n                    except RuntimeError:\n                        gsl_odeiv_evolve_free (e)\n                        gsl_odeiv_control_free (c)\n                        gsl_odeiv_step_free (s)\n                        sage_free(y)\n                        sage_free(scale_abs_array)\n                        raise ValueError(\"error solving\")\n\n                for j  from 0<=j<dim:\n                    v[j]=<double> y[j]\n                result.append( (t,copy.copy(v)) )\n                t = t_end\n                t_end= t+delta\n\n        else:\n            n = len(self.t_span)\n            result.append((self.t_span[0],self.y_0))\n            t=self.t_span[0]\n            for i from 0<i<n:\n                t_end=self.t_span[i]\n                while (t < t_end):\n                    try:\n                        sig_on()\n                        status = gsl_odeiv_evolve_apply (e, c, s, &sys, &t, t_end, &h, y)\n                        sig_off()\n                        if (status != GSL_SUCCESS):\n                            raise RuntimeError\n                    except RuntimeError:\n                        gsl_odeiv_evolve_free (e)\n                        gsl_odeiv_control_free (c)\n                        gsl_odeiv_step_free (s)\n                        sage_free(y)\n                        sage_free(scale_abs_array)\n                        raise ValueError(\"error solving\")\n\n                for j from 0<=j<dim:\n                    v[j]=<double> y[j]\n                result.append( (t,copy.copy(v)) )\n\n                t=self.t_span[i]\n\n\n        gsl_odeiv_evolve_free (e)\n        gsl_odeiv_control_free (c)\n        gsl_odeiv_step_free (s)\n        sage_free(y)\n        sage_free(scale_abs_array)\n        self.solution = result\n\n","mode":"python","lineno":-1,"filename":null}}︡
︠4bcc9119-d80d-492d-b443-0eb25ba81331︠
︠43d27438-6603-4ec3-b00c-1792b355a918︠









