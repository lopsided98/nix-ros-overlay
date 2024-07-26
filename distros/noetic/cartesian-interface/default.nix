
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, hardware-interface, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-noetic-cartesian-interface";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_controllers_cartesian-release/archive/release/noetic/cartesian_interface/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "7852bec4675c7d0c401f8f4da568a4b337b4fea4010473127e407945b53f33da";
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
