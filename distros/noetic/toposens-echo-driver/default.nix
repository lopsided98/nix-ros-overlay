
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, genmsg, message-generation, message-runtime, roscpp, std-msgs, tf, tf2-ros, toposens-msgs }:
buildRosPackage {
  pname = "ros-noetic-toposens-echo-driver";
  version = "2.3.2-r2";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/-/archive/release/noetic/toposens_echo_driver/2.3.2-2/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "a814172b5efd096897432cbc131255850a53c5d89b8b9a4627d8c76e96e8184b";
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
