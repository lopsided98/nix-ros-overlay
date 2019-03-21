
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-graph-msgs";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/davetcoleman/graph_msgs-release/archive/release/melodic/graph_msgs/0.1.0-0.tar.gz;
    sha256 = "90eea30842973033f2e20449457a89b871d1a66249113b2a423da84f45b4ff0a";
  };

  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ std-msgs catkin message-generation geometry-msgs ];

  meta = {
    description = ''ROS messages for publishing graphs of different data types'';
    #license = lib.licenses.BSD;
  };
}
