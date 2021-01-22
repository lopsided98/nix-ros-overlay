
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-msgs, gazebo-plugins, gazebo-ros, gazebo-ros-control, gazebo-ros-pkgs, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rr-openrover-description";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/kinetic/rr_openrover_description/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "08e441ccf838829cbe86d38194b7a9dbbf96397ba9339878f85ce9dc14a10752";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-msgs gazebo-plugins gazebo-ros gazebo-ros-control gazebo-ros-pkgs roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rr_openrover_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
