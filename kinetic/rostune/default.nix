
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, topic-tools, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rostune";
  version = "1.0.7";

  src = fetchurl {
    url = https://github.com/roboskel/rostune-release/archive/release/kinetic/rostune/1.0.7-0.tar.gz;
    sha256 = "534824c7b7e90a2a392ddb2bd82ac53ee867626be2a781a8fe55438afca1a6a7";
  };

  buildInputs = [ std-msgs message-generation topic-tools ];
  propagatedBuildInputs = [ std-msgs topic-tools message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rostune is a tool that helps ROS developers distribute their nodes in the most effective way. It collects statistics for topics and nodes, such as CPU and network usage.'';
    #license = lib.licenses.BSD;
  };
}
