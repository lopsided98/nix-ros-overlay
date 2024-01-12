
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, kdl-parser, robot-state-publisher, roscpp, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-dynamic-robot-state-publisher";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/peci1/dynamic_robot_state_publisher-release/archive/release/noetic/dynamic_robot_state_publisher/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "2f9f99a40f6371216a634914742c7056dc89aeedd525a09b6289048e1ef0f65d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure kdl-parser robot-state-publisher roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Improved ROS robot_state_publisher which can update the robot model via dynamic_reconfigure.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
