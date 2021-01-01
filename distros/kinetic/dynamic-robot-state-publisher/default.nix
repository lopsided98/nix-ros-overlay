
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, kdl-parser, robot-state-publisher, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dynamic-robot-state-publisher";
  version = "1.1.1";

  src = fetchurl {
    url = "https://github.com/peci1/dynamic_robot_state_publisher-release/archive/release/kinetic/dynamic_robot_state_publisher/1.1.1-0.tar.gz";
    name = "1.1.1-0.tar.gz";
    sha256 = "bc5ce88af6cd8d9fff8b2012e6d309b085deb0d80557148e41dae6b9245b0b62";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure kdl-parser robot-state-publisher roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Improved ROS robot_state_publisher which can update the robot model via dynamic_reconfigure.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
