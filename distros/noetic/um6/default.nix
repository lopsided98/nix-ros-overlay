
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, roslint, sensor-msgs, serial }:
buildRosPackage {
  pname = "ros-noetic-um6";
  version = "1.1.3-r4";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/um6-release/archive/release/noetic/um6/1.1.3-4.tar.gz";
    name = "1.1.3-4.tar.gz";
    sha256 = "1545b3debade76db6e2955bc6769c6e1eb23c8f4f1d2f6e0a28aee3dbbb97c2b";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation roslint ];
  propagatedBuildInputs = [ message-runtime roscpp sensor-msgs serial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The um6 package provides a C++ implementation of the CH Robotics serial protocol, and a
    corresponding ROS node for publishing standard ROS orientation topics from a UM6.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
