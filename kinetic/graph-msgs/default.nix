
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-graph-msgs";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/davetcoleman/graph_msgs-release/archive/release/kinetic/graph_msgs/0.1.0-0.tar.gz;
    sha256 = "d72fb3ab3eac18e4669abdc4af66cecb565edd2275c039be2fe3d5d8ce9b5f8b";
  };

  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ std-msgs catkin message-generation geometry-msgs ];

  meta = {
    description = ''ROS messages for publishing graphs of different data types'';
    #license = lib.licenses.BSD;
  };
}
