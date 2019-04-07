
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, sensor-msgs, catkin, serial, message-generation, message-runtime, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-um7";
  version = "0.0.4";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/um7-release/archive/release/kinetic/um7/0.0.4-0.tar.gz;
    sha256 = "96835957db572d596a12aeef84e6319b9f9f2e14876e0251542763a323ae24b4";
  };

  buildInputs = [ roscpp sensor-msgs message-generation serial ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ sensor-msgs roscpp message-runtime serial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The um7 package provides a C++ implementation of the CH Robotics serial protocol, and a
    corresponding ROS node for publishing standard ROS orientation topics from a UM7.'';
    #license = lib.licenses.BSD;
  };
}
