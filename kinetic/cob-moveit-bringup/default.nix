
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-moveit-config, moveit-ros-move-group, moveit-ros-visualization, cob-hardware-config, catkin, moveit-planners-ompl, robot-state-publisher, moveit-ros-perception, tf, joint-state-publisher, moveit-plugins, moveit-setup-assistant }:
buildRosPackage {
  pname = "ros-kinetic-cob-moveit-bringup";
  version = "0.7.1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_manipulation-release/archive/release/kinetic/cob_moveit_bringup/0.7.1-0.tar.gz;
    sha256 = "95c7d066abee8f9b8af3b833c995666223079137d7bb61d86dff1b7e0b787533";
  };

  propagatedBuildInputs = [ moveit-ros-move-group cob-moveit-config moveit-ros-visualization cob-hardware-config moveit-setup-assistant robot-state-publisher moveit-ros-perception tf joint-state-publisher moveit-plugins moveit-planners-ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt launch files'';
    license = with lib.licenses; [ asl20 ];
  };
}
