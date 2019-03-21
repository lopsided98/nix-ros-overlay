
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kdl-parser, sensor-msgs, catkin, robot-state-publisher, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-dynamic-robot-state-publisher";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/peci1/dynamic_robot_state_publisher-release/archive/release/kinetic/dynamic_robot_state_publisher/1.1.1-0.tar.gz;
    sha256 = "bc5ce88af6cd8d9fff8b2012e6d309b085deb0d80557148e41dae6b9245b0b62";
  };

  propagatedBuildInputs = [ kdl-parser robot-state-publisher dynamic-reconfigure sensor-msgs roscpp ];
  nativeBuildInputs = [ catkin kdl-parser robot-state-publisher dynamic-reconfigure sensor-msgs roscpp ];

  meta = {
    description = ''Improved ROS robot_state_publisher which can update the robot model via dynamic_reconfigure.'';
    #license = lib.licenses.BSD;
  };
}
