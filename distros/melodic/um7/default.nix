
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, roslint, sensor-msgs, serial }:
buildRosPackage {
  pname = "ros-melodic-um7";
  version = "0.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/um7-release/archive/release/melodic/um7/0.0.7-1.tar.gz";
    name = "0.0.7-1.tar.gz";
    sha256 = "2c3e906d3ea464379b5d44ae8834da5e8136d03b7ac108bc50d2f0116318a914";
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
