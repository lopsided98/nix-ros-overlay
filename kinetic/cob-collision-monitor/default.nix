
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-move-group, pluginlib, std-msgs, tf, catkin, moveit-ros-planning, cob-moveit-config }:
buildRosPackage {
  pname = "ros-kinetic-cob-collision-monitor";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/kinetic/cob_collision_monitor/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "cf114b66f9e8f9fbfa5afb05fc3ba5aeb1c982b75d45364cd8a093f626b50849";
  };

  buildType = "catkin";
  buildInputs = [ moveit-ros-move-group pluginlib std-msgs tf moveit-ros-planning ];
  propagatedBuildInputs = [ moveit-ros-move-group pluginlib std-msgs tf moveit-ros-planning cob-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The collision monitor uses the planning scene monitor to read the state of the robot and check it for collision with itselt or the environment. It addition a ground plane is added in any case. Can be used as a stand-aloan node or a move_group capability.'';
    license = with lib.licenses; [ asl20 ];
  };
}
