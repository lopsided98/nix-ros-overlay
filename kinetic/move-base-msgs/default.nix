
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-move-base-msgs";
  version = "1.13.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation_msgs-release/archive/release/kinetic/move_base_msgs/1.13.0-0.tar.gz;
    sha256 = "6f9cb9261d225727a7e0a9755d8ced29df60668c4a0cb1cb62e474ae0fe307f4";
  };

  buildInputs = [ message-generation actionlib-msgs geometry-msgs ];
  propagatedBuildInputs = [ message-runtime actionlib-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Holds the action description and relevant messages for the move_base package'';
    #license = lib.licenses.BSD;
  };
}
