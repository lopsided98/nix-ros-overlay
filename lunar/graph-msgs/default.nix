
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-graph-msgs";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/davetcoleman/graph_msgs-release/archive/release/lunar/graph_msgs/0.1.0-0.tar.gz;
    sha256 = "599d1b5ec0878c8c7153be8e5fcbd0a1503631a13b2f5b02469c4a5da60c49ec";
  };

  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for publishing graphs of different data types'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
