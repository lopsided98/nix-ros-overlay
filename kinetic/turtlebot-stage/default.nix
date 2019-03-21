
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtlebot-bringup, catkin, yocs-velocity-smoother, stage-ros, navigation, yocs-virtual-sensor, turtlebot-navigation }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-stage";
  version = "2.2.3";

  src = fetchurl {
    url = https://github.com/turtlebot-release/turtlebot_simulator-release/archive/release/kinetic/turtlebot_stage/2.2.3-0.tar.gz;
    sha256 = "b71fa130c001a758087f1a0f6df2521ab3d2129a9a053ed7d60894ad3e99c462";
  };

  propagatedBuildInputs = [ stage-ros turtlebot-bringup navigation yocs-virtual-sensor turtlebot-navigation yocs-velocity-smoother ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Stage version of turtlebot simulation. Convenient to test 2D-navigation related stuffs'';
    #license = lib.licenses.BSD;
  };
}
