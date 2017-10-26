################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/TestThread.cpp \
../src/makeLED.cpp 

OBJS += \
./src/TestThread.o \
./src/makeLED.o 

CPP_DEPS += \
./src/TestThread.d \
./src/makeLED.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	arm-linux-gnueabihf-g++ -I"C:\SysGCC\beaglebone\arm-linux-gnueabihf\include\c++\6.3.0" -I"D:\Project\BeagleBone\Work\HelloBeagleBone\src\network" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


