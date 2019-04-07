
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, cob-moveit-config, moveit-ros-move-group, pluginlib, catkin, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-cob-collision-monitor";
  version = "0.7.1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_manipulation-release/archive/release/kinetic/cob_collision_monitor/0.7.1-0.tar.gz;
    sha256 = "c19e3d14a2377f5d58c7f1229dc15fa8519182f57d28069b4e1d20108d0f8010";
  };

  buildInputs = [ moveit-ros-planning moveit-ros-move-group pluginlib std-msgs tf ];
  propagatedBuildInputs = [ moveit-ros-planning moveit-ros-move-group pluginlib cob-moveit-config std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The collision monitor uses the planning scene monitor to read the state of the robot and check it for collision with itselt or the environment. It addition a ground plane is added in any case. Can be used as a stand-aloan node or a move_group capability.'';
    #license = lib.licenses.Apache 2.0;
  };
}
