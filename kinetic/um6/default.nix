
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, sensor-msgs, catkin, serial, message-generation, message-runtime, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-um6";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/um6-release/archive/release/kinetic/um6/1.1.2-0.tar.gz;
    sha256 = "1b683e0baa0ded774e95c807164fb115d6533f861a54dcc709007a2a4d4cd680";
  };

  buildInputs = [ roslint sensor-msgs serial message-generation roscpp ];
  propagatedBuildInputs = [ sensor-msgs serial message-runtime roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The um6 package provides a C++ implementation of the CH Robotics serial protocol, and a
    corresponding ROS node for publishing standard ROS orientation topics from a UM6.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
