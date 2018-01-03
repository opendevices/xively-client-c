# Copyright (c) 2003-2017, LogMeIn, Inc. All rights reserved.
#
# This is part of the Xively C Client library,
# it is licensed under the BSD 3-Clause license.

help:
	$(info )
	$(info ## )
	$(info ## Xively C Client Build Help )
	$(info ## )
	$(info )
	$(info Hello! Please enter one of these more specific help topics to learn more about )
	$(info a specific subsection of the Xively client build system: )
	$(info )
	$(info . Make Help Topics: )
	$(info .    make help_brief )
	$(info .    make help_build_presets)
	$(info .    make help_tls )
	$(info .    make help_makefile_debug )
	$(info . )
	$(info )

help_brief:
	$(info )
	$(info ## )
	$(info ## Xively C Client Make System Briefing )
	$(info ## )
	$(info )
	$(info . The Xively C Client has been designed to be modular to support )
	$(info . many optional features for IoT connectivity based on varying device size )
	$(info . constrants. )
	$(info . )
	$(info . Additionally, the Client has been written with a Board Support Package [BSP] )
	$(info . in mind, where certain subsystem implementations swap in depending on the )
	$(info . target platform [POSIX, CC3200, etc.] and desired third party TLS )  
	$(info . implementations [WolfSSL and mbedTLS]. )
	$(info . )
	$(info . It sounds complicated but Don't Panic!  This make system was designed to work )	  
	$(info . out-of-the-box on OSX and Linux by simply typing 'make'. )
	$(info . )  
	$(info . And if you've already done that, then now you're probably curious to see what )
	$(info . other snazzy toys and tuning options might lie beneath the surface. )
	$(info . )
	$(info . Please explore the make help topics [make help], and also consult the following )
	$(info . documentation: )
	$(info .    doc/user_guide.md )
	$(info .    doc/porting_guide.md )
	$(info .    http://developer.xively.com/ )
	$(info . )
	$(info )

help_build_presets:
	$(info )
	$(info ## )
	$(info ## Xively C Client Make Build Presets )
	$(info ## )
	$(info )
	$(info . The Xively C Client has many optional modules and platform targets. While you )
	$(info . can set make CONFIG and TARGET flags directly with your selected Xively Client )
	$(info . features and target platforms, there are some prebaked profiles that we've )
	$(info . created for quick development on common platforms.")
	$(info )
	$(info . For instance, "make PRESET=POSIX_DEV" for development on MacOSX or Linux.)
	$(info )
	$(info . All PRESET configurations reside in make/mt-config/mt-presets.mk.)
	$(info . Additionally, when you build with a PRESET configurations the resulting )
	$(info . CONFIG and TARGET flags are logged to the console so that you know which )
	$(info . options have been enabled for your build.)
	$(info )
	$(info . Available presets: )
	$(info .   POSIX_DEV_MIN)
	$(info .   POSIX_DEV)
	$(info .   POSIX_REL_MIN)
	$(info .   POSIX_REL)
	$(info .   POSIX_UNSECURE_REL)
	$(info .   POSIX_THREADING_REL)
	$(info .   ARM_REL_MIN)
	$(info .   ARM_REL)
	$(info .   CC3200)
	$(info .   CC3200_SDK120)
	$(info .   CC3200_TLS_SOCKET)
	$(info .   STM32F4)
	$(info )
 
help_makefile_debug:
	$(info )
	$(info ## )
	$(info ## Xively C Client MAKEFILE_DEBUG Help )
	$(info ## )
	$(info )
	$(info . The Make system for the Xively Client is made up of Makefiles and .mk files )
	$(info . for configuring the toolchains and filesets based on the TARGET and CONFIG )
	$(info . flags.  These form switches that dictate which include directories, source )
	$(info . directories, and preprocessor defintions are used, and which Xively Client )
	$(info . features are enabled. )
	$(info )
	$(info . When cross-compiling for a particular device you might find it useful to )
	$(info . log these values to the console. To do so, you must simply add a makefile )
	$(info . variable to your command line when running make: )
	$(info )
	$(info . 		make MAKEFILE_DEBUG=1 )
	$(info . )
	$(info )

help_tls:
	$(info )
	$(info ## )
	$(info ## Xively C Client TLS Library Make Option )
	$(info ## )
	$(info )
	$(info . By default, make will compile the Xively Client Board Support Package for )
	$(info . WolfSSL's TLS implementation.  Additionally a shell script will )
	$(info . automatically do a git clone of WolfSSL from their github repository )
	$(info . configure its sources with features the Xively Client needs, and build WolfSSL as)
	$(info . a static library using WolfSSL's make enviornment. The Xively Client will link )
	$(info . against this library when building the examples in the examples/ directory. )
	$(info )
	$(info . ! NOTE: autotools are required to build WolfSSL.  Please see the )
	$(info . Build Dependencies section of doc/porting_guide.md for more information.)
	$(info . for more information. )
	$(info )
	$(info . In addition to WolfSSL, we also support similar BSPs and build processess for )
	$(info . mbedTLS. see below] )
	$(info )
	$(info . ! Note: If you build the main library with specific XI_BSP_TLS definition )
	$(info . then you must compile the Xively C Client examples with the same definition, )
	$(info . otherwise you'll encounter compiler errors and/or linker errors. )
	$(info )
	$(info . If you wish to build without TLS then please use one of our UNSECURE )
	$(info . makefile presets described in our Build Presets make help section, and )
	$(info . consult doc/user_guide.md and doc/porting_guide.md in this repository. ) 
	$(info )
	$(info . XI_BSP_TLS build options: )
	$(info .    make                    # defaults to wolfSSL )
	$(info .    make XI_BSP_TLS=wolfssl # WolfSSL )
	$(info .    make XI_BSP_TLS=mbedtls # mbedTLS )
	$(info . )
	$(info )

help_disclaimer:
	$(info )
	$(info # Xively C Client )
	$(info )
	$(info . run 'make help' for more information, including a list of valid Build PRESETS. )

