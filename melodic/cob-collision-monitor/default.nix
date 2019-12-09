
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-move-group, pluginlib, std-msgs, tf, catkin, moveit-ros-planning, cob-moveit-config, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-cob-collision-monitor";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/melodic/cob_collision_monitor/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "7c210725da0698b5635701f77790e527e9fc24e7a448aac0e951bcb8aae3c34c";
  };

  buildType = "catkin";
  buildInputs = [ moveit-ros-move-group pluginlib std-msgs tf moveit-ros-planning tf2-ros ];
  propagatedBuildInputs = [ moveit-ros-move-group pluginlib std-msgs tf moveit-ros-planning cob-moveit-config tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The collision monitor uses the planning scene monitor to read the state of the robot and check it for collision with itselt or the environment. It addition a ground plane is added in any case. Can be used as a stand-aloan node or a move_group capability.'';
    license = with lib.licenses; [ asl20 ];
  };
}
