# Lecture 7.3: Related Programming Models - OpenCL Host Code Part 1 
- clCreateBuffer() allocates data on all devices in the context
- clCreateContextFromType()
- clGetContextInfo()
- clCreateCommandQueue()
- clCreateProgramWithSource() compile un kernel sous forme de string
- clBuildProgram() build a program
- clCreateKernel() 
- clReleaseMemObject() 


# Lecture 7.4: Related Programming Models - OpenCL Host Code (Cont.)

- clEnqueueWriteBuffer(9 params) host-device memcpy
- clEnqueueReadBuffer(8 params) device-host memcpy
- clCreateKernel(4 params)
- clEnqueueNDRangeKernel(9 params)
- clWaitForEvents(2 params)


<BR>

- clCreateBuffer() & clEnqueueWriteBuffer() can be combined into a single clCreateBuffer() call