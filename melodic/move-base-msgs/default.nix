
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-move-base-msgs";
  version = "1.13.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation_msgs-release/archive/release/melodic/move_base_msgs/1.13.0-0.tar.gz;
    sha256 = "a9b1ee115c3252718a9915a94ba16421a39309ed237a33d790f486d468f8a1ef";
  };

  propagatedBuildInputs = [ message-runtime actionlib-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin message-generation actionlib-msgs geometry-msgs ];

  meta = {
    description = ''Holds the action description and relevant messages for the move_base package'';
    #license = lib.licenses.BSD;
  };
}
