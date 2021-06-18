
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, hardware-interface, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-cartesian-interface";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_controllers_cartesian-release/archive/release/melodic/cartesian_interface/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "35fce24a8f685c4128e1038cfe1b64add4981fcb4b71fb8af6fa6d5307b69cb7";
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
