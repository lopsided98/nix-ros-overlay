
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, navigation, stage-ros, turtlebot-bringup, turtlebot-navigation, yocs-velocity-smoother, yocs-virtual-sensor }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-stage";
  version = "2.2.3";

  src = fetchurl {
    url = "https://github.com/turtlebot-release/turtlebot_simulator-release/archive/release/kinetic/turtlebot_stage/2.2.3-0.tar.gz";
    name = "2.2.3-0.tar.gz";
    sha256 = "b71fa130c001a758087f1a0f6df2521ab3d2129a9a053ed7d60894ad3e99c462";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ navigation stage-ros turtlebot-bringup turtlebot-navigation yocs-velocity-smoother yocs-virtual-sensor ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Stage version of turtlebot simulation. Convenient to test 2D-navigation related stuffs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
