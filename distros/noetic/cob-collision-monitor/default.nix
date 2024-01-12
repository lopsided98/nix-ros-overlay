
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-moveit-config, moveit-ros-move-group, moveit-ros-planning, pluginlib, std-msgs, tf, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-cob-collision-monitor";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/noetic/cob_collision_monitor/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "48e150ed386f0e2257436a253cef0d68a0fba5b27af97fc97156e15621f17054";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-moveit-config moveit-ros-move-group moveit-ros-planning pluginlib std-msgs tf tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The collision monitor uses the planning scene monitor to read the state of the robot and check it for collision with itselt or the environment. It addition a ground plane is added in any case. Can be used as a stand-aloan node or a move_group capability.'';
    license = with lib.licenses; [ asl20 ];
  };
}
