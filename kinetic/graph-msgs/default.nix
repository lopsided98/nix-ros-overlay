
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, message-runtime, std-msgs, catkin, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-graph-msgs";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/davetcoleman/graph_msgs-release/archive/release/kinetic/graph_msgs/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "d72fb3ab3eac18e4669abdc4af66cecb565edd2275c039be2fe3d5d8ce9b5f8b";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for publishing graphs of different data types'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
