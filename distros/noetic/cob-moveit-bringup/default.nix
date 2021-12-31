
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-hardware-config, cob-moveit-config, joint-state-publisher, moveit-planners-ompl, moveit-plugins, moveit-ros-move-group, moveit-ros-perception, moveit-ros-visualization, moveit-setup-assistant, robot-state-publisher, rviz, tf, warehouse-ros }:
buildRosPackage {
  pname = "ros-noetic-cob-moveit-bringup";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/noetic/cob_moveit_bringup/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "aaba22f509827cfdd315e46cd3df66a432fec482fb0e2ddfe0d753dd390b9955";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-hardware-config cob-moveit-config joint-state-publisher moveit-planners-ompl moveit-plugins moveit-ros-move-group moveit-ros-perception moveit-ros-visualization moveit-setup-assistant robot-state-publisher rviz tf warehouse-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt launch files'';
    license = with lib.licenses; [ asl20 ];
  };
}
