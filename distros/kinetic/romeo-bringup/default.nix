
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, naoqi-driver, romeo-description, romeo-sensors-py }:
buildRosPackage {
  pname = "ros-kinetic-romeo-bringup";
  version = "0.1.5";

  src = fetchurl {
    url = "https://github.com/ros-aldebaran/romeo_robot-release/archive/release/kinetic/romeo_bringup/0.1.5-0.tar.gz";
    name = "0.1.5-0.tar.gz";
    sha256 = "fe33b8c54668fc9ccf96dcb224bc6c81d0b733b27730af7a6a374f6d196f01ef";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ naoqi-driver romeo-description romeo-sensors-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The romeo_bringup package 
    contains launch and configuration files required to bring ROS interfaces for Romeo up into a running state.'';
    license = with lib.licenses; [ asl20 ];
  };
}
