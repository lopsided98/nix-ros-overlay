
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtlebot-dashboard, catkin, turtlebot-rviz-launchers, turtlebot-interactive-markers }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-interactions";
  version = "2.3.1";

  src = fetchurl {
    url = https://github.com/turtlebot-release/turtlebot_interactions-release/archive/release/kinetic/turtlebot_interactions/2.3.1-0.tar.gz;
    sha256 = "163443fc9b56c33c01d0f76b879a1730fbb903cdd5ef6d53bece3cc38e0fa195";
  };

  propagatedBuildInputs = [ turtlebot-dashboard turtlebot-interactive-markers turtlebot-rviz-launchers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkin meta-package for turtlebot_interactions'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
