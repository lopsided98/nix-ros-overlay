
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-graph-msgs";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/graph_msgs-release/archive/release/melodic/graph_msgs/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "39e497e03412353c16417a98db50aba5508d4bba0f36e50385a2c1b7954a6997";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for publishing graphs of different data types'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
