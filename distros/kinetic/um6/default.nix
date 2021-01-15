
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, roslint, sensor-msgs, serial }:
buildRosPackage {
  pname = "ros-kinetic-um6";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/um6-release/archive/release/kinetic/um6/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "f4194b0aa0eb6c9b639dc98a40f39e4c56be136968c90c93f7baef518763342a";
  };

  buildType = "catkin";
  buildInputs = [ message-generation roslint ];
  propagatedBuildInputs = [ message-runtime roscpp sensor-msgs serial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The um6 package provides a C++ implementation of the CH Robotics serial protocol, and a
    corresponding ROS node for publishing standard ROS orientation topics from a UM6.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
