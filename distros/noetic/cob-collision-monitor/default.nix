
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-moveit-config, moveit-ros-move-group, moveit-ros-planning, pluginlib, std-msgs, tf, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-cob-collision-monitor";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/noetic/cob_collision_monitor/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "863695b63278cf0fbcdd2e8d2da5d7475220cced0f8e14e2f2cc5f61bd4bd1bd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-moveit-config moveit-ros-move-group moveit-ros-planning pluginlib std-msgs tf tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The collision monitor uses the planning scene monitor to read the state of the robot and check it for collision with itselt or the environment. It addition a ground plane is added in any case. Can be used as a stand-aloan node or a move_group capability.'';
    license = with lib.licenses; [ asl20 ];
  };
}
