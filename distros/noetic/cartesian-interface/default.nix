
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, hardware-interface, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-noetic-cartesian-interface";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_controllers_cartesian-release/archive/release/noetic/cartesian_interface/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "1f2aa6bb27030a2dfc1eabab2549db60369b49ed65f3a5f8452aea0ea4957b8e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ geometry-msgs hardware-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Defines a hardware interface to send Cartesian commands to a robot hardware and read
    Cartesian states.'';
    license = with lib.licenses; [ asl20 ];
  };
}
