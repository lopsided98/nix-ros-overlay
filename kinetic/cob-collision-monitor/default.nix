
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-moveit-config, moveit-ros-move-group, moveit-ros-planning, pluginlib, std-msgs, tf, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-cob-collision-monitor";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/kinetic/cob_collision_monitor/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "afee8b6266f2e6553e9b8c5a706559cf1efed4018c54a3af5f5ba3c8b959e6ce";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-moveit-config moveit-ros-move-group moveit-ros-planning pluginlib std-msgs tf tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The collision monitor uses the planning scene monitor to read the state of the robot and check it for collision with itselt or the environment. It addition a ground plane is added in any case. Can be used as a stand-aloan node or a move_group capability.'';
    license = with lib.licenses; [ asl20 ];
  };
}
