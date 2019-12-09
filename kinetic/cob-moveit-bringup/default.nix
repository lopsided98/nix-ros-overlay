
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-planners-ompl, cob-hardware-config, joint-state-publisher, robot-state-publisher, moveit-setup-assistant, moveit-ros-move-group, tf, catkin, moveit-ros-perception, moveit-ros-visualization, cob-moveit-config, moveit-plugins }:
buildRosPackage {
  pname = "ros-kinetic-cob-moveit-bringup";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/kinetic/cob_moveit_bringup/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "6c768ccf6c807d7d238529edfea158769f236389e96e9cf051ab4f8658e41582";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-planners-ompl cob-hardware-config joint-state-publisher robot-state-publisher moveit-setup-assistant moveit-ros-move-group tf moveit-ros-perception moveit-ros-visualization cob-moveit-config moveit-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt launch files'';
    license = with lib.licenses; [ asl20 ];
  };
}
