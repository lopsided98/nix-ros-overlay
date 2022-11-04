
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, genmsg, message-generation, message-runtime, roscpp, std-msgs, tf, tf2-ros, toposens-msgs }:
buildRosPackage {
  pname = "ros-melodic-toposens-echo-driver";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/-/archive/release/melodic/toposens_echo_driver/2.3.2-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "c829200a04cb77adbf35ef93ea5ed5b435adb5fdf3f38e616fe14e0a83e53f78";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules dynamic-reconfigure genmsg message-generation message-runtime roscpp std-msgs tf tf2-ros toposens-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS device driver for communication with TS ECHO sensors on a CAN bus'';
    license = with lib.licenses; [ bsd3 ];
  };
}
