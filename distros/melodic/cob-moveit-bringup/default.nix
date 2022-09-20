
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-hardware-config, cob-moveit-config, joint-state-publisher, moveit-planners-ompl, moveit-plugins, moveit-ros-move-group, moveit-ros-perception, moveit-ros-visualization, moveit-setup-assistant, robot-state-publisher, rviz, tf, warehouse-ros }:
buildRosPackage {
  pname = "ros-melodic-cob-moveit-bringup";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/melodic/cob_moveit_bringup/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "863ad6c879f02892c944b4c3c7c1318f89e20d3dccc1f70fdf7ee625acf68feb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-hardware-config cob-moveit-config joint-state-publisher moveit-planners-ompl moveit-plugins moveit-ros-move-group moveit-ros-perception moveit-ros-visualization moveit-setup-assistant robot-state-publisher rviz tf warehouse-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt launch files'';
    license = with lib.licenses; [ asl20 ];
  };
}
