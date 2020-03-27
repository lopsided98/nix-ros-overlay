
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-hardware-config, cob-moveit-config, joint-state-publisher, moveit-planners-ompl, moveit-plugins, moveit-ros-move-group, moveit-ros-perception, moveit-ros-visualization, moveit-setup-assistant, robot-state-publisher, tf }:
buildRosPackage {
  pname = "ros-melodic-cob-moveit-bringup";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/melodic/cob_moveit_bringup/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "8776cd8a528c579b07fee7039419e930ae27f9d7f885766bdfac5e1864152545";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-hardware-config cob-moveit-config joint-state-publisher moveit-planners-ompl moveit-plugins moveit-ros-move-group moveit-ros-perception moveit-ros-visualization moveit-setup-assistant robot-state-publisher tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt launch files'';
    license = with lib.licenses; [ asl20 ];
  };
}
