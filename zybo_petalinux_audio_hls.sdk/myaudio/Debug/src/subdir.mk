################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../src/main.cc 

C_SRCS += \
../src/audio.c \
../src/fir.c 

CPP_SRCS += \
../src/audio_cppwrap.cpp \
../src/fir_cppwrap.cpp \
../src/linuxi2c.cpp \
../src/linuxmisc.cpp \
../src/linuxmmap.cpp 

CC_DEPS += \
./src/main.d 

OBJS += \
./src/audio.o \
./src/audio_cppwrap.o \
./src/fir.o \
./src/fir_cppwrap.o \
./src/linuxi2c.o \
./src/linuxmisc.o \
./src/linuxmmap.o \
./src/main.o 

C_DEPS += \
./src/audio.d \
./src/fir.d 

CPP_DEPS += \
./src/audio_cppwrap.d \
./src/fir_cppwrap.d \
./src/linuxi2c.d \
./src/linuxmisc.d \
./src/linuxmmap.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 Linux g++ compiler'
	arm-linux-gnueabihf-g++ -Wall -Os -c -fmessage-length=0 -MT"$@" -fomit-frame-pointer -pipe -fno-common -fno-builtin -DEMBED -Dlinux -D__linux__ -Dunix -fPIC -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 Linux g++ compiler'
	arm-linux-gnueabihf-g++ -Wall -Os -c -fmessage-length=0 -MT"$@" -fomit-frame-pointer -pipe -fno-common -fno-builtin -DEMBED -Dlinux -D__linux__ -Dunix -fPIC -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 Linux g++ compiler'
	arm-linux-gnueabihf-g++ -Wall -Os -c -fmessage-length=0 -MT"$@" -fomit-frame-pointer -pipe -fno-common -fno-builtin -DEMBED -Dlinux -D__linux__ -Dunix -fPIC -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


