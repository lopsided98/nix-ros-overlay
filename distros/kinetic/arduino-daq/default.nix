
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, mrpt1, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-arduino-daq";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/ual-arm-ros-pkg-release/arduino_daq-release/archive/release/kinetic/arduino_daq/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "7d2d5c27545910fdce8db1eedda18cac315953b6f76396ee73a0ca0a71c65a15";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ message-generation mrpt1 roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''AVR8 firmware, a host standalone C++ library, and a ROS node for UAL eCAR's Arduino-based DAQ system, but it is generic enough for use in many other applications'';
    license = with lib.licenses; [ gpl3 ];
  };
}
