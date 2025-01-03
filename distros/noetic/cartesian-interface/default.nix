
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, hardware-interface, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-noetic-cartesian-interface";
  version = "0.1.7-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_controllers_cartesian-release/archive/release/noetic/cartesian_interface/0.1.7-1.tar.gz";
    name = "0.1.7-1.tar.gz";
    sha256 = "ce2aaaea41e4809d26f624c9114d1bb1360d1610b477b8129e4c51b32cc253ec";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ geometry-msgs hardware-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Defines a hardware interface to send Cartesian commands to a robot hardware and read
    Cartesian states.";
    license = with lib.licenses; [ asl20 ];
  };
}
