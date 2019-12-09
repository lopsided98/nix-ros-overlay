
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-runtime, std-msgs, catkin, topic-tools, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-rostune";
  version = "1.0.7";

  src = fetchurl {
    url = "https://github.com/roboskel/rostune-release/archive/release/kinetic/rostune/1.0.7-0.tar.gz";
    name = "1.0.7-0.tar.gz";
    sha256 = "534824c7b7e90a2a392ddb2bd82ac53ee867626be2a781a8fe55438afca1a6a7";
  };

  buildType = "catkin";
  buildInputs = [ topic-tools std-msgs message-generation ];
  propagatedBuildInputs = [ topic-tools message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rostune is a tool that helps ROS developers distribute their nodes in the most effective way. It collects statistics for topics and nodes, such as CPU and network usage.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
