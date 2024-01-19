
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, nav2d-navigator, pluginlib, roscpp, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-nav2d-exploration";
  version = "0.4.3-r1";

  src = fetchurl {
    url = "https://github.com/skasperski/navigation_2d-release/archive/release/noetic/nav2d_exploration/0.4.3-1.tar.gz";
    name = "0.4.3-1.tar.gz";
    sha256 = "b28cf2ddb5f4ebe6b1b2192bb9788ed7c839a47745d6362089230309a0cc650d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs nav2d-navigator pluginlib roscpp tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds a collection of plugins for the RobotNavigator, that provide
    different cooperative exploration strategies for a team of mobile robots.'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
