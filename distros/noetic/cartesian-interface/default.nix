
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, hardware-interface, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-noetic-cartesian-interface";
  version = "0.1.2-r2";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_controllers_cartesian-release/archive/release/noetic/cartesian_interface/0.1.2-2.tar.gz";
    name = "0.1.2-2.tar.gz";
    sha256 = "f26a08869430d07984b31f1453d35f7864d299555ce6fc93675c9ef46f15ef1a";
  };

  buildType = "catkin";
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ geometry-msgs hardware-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Defines a hardware interface to send Cartesian commands to a robot hardware and read
    Cartesian states.'';
    license = with lib.licenses; [ asl20 ];
  };
}
