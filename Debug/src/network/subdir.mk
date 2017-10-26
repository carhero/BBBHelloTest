################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/network/create_thread.cpp \
../src/network/msg_parser.cpp 

OBJS += \
./src/network/create_thread.o \
./src/network/msg_parser.o 

CPP_DEPS += \
./src/network/create_thread.d \
./src/network/msg_parser.d 


# Each subdirectory must supply rules for building sources it contributes
src/network/%.o: ../src/network/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	arm-linux-gnueabihf-g++ -I"C:\SysGCC\beaglebone\arm-linux-gnueabihf\include\c++\6.3.0" -I"D:\Project\BeagleBone\Work\HelloBeagleBone\src\network" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


