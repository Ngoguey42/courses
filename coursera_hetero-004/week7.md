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

# Lecture 7.5: Related Programming Models - OpenACC 

- \#pragma dans tous les sens

# Lecture 7.6: Related Programming Models - OpenACC Details 

# Lecture 8.1: Related Parallel Models - C++ AMP

- Une lib c++
- .discard_data()

# Lecture 8.2: Related Parallel Models - C++ AMP Advance Concepts

- array<> vs array_view<>
- future with .synchronize_async() .get()
- extent<>, array\_view<, X> to array\_view<, Y>
- More: Device query

# Lecture 8.3: Related Parallel Models - Introduction to Heterogeneous Supercomputing and MPI

# Lecture 8.4: Conclusions and Future Directions

