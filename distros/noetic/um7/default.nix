
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, roslint, sensor-msgs, serial }:
buildRosPackage {
  pname = "ros-noetic-um7";
  version = "0.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/um7-release/archive/release/noetic/um7/0.0.7-1.tar.gz";
    name = "0.0.7-1.tar.gz";
    sha256 = "5d5a3f21139972a21ef808586bf3239794e197067c2523dc7c8cf8c4f6a22adc";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ message-runtime roscpp sensor-msgs serial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The um7 package provides a C++ implementation of the CH Robotics serial protocol, and a
    corresponding ROS node for publishing standard ROS orientation topics from a UM7.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
