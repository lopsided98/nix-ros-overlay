
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joy, message-generation, message-runtime, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-modelica-bridge";
  version = "0.1.1";

  src = fetchurl {
    url = "https://github.com/ModROS/modelica_bridge-release/archive/release/kinetic/modelica_bridge/0.1.1-0.tar.gz";
    name = "0.1.1-0.tar.gz";
    sha256 = "67eeaa61f398a4fb22d44e876a0c9a6c50ab644fdf72b1bb80456c39bbaf9a4b";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ joy message-runtime roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS package for bridging ROS with Modelica tools via TCP/IP sockets.
    Meant for use along with the ROS_Bridge Modelica package, made by the same developer.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
