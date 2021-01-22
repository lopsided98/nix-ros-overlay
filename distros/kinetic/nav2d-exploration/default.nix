
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, nav2d-navigator, pluginlib, roscpp, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-nav2d-exploration";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/skasperski/navigation_2d-release/archive/release/kinetic/nav2d_exploration/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "778c62212eeb65345efd7072ea49a90e412b32621ea7b6262c7a0fd4b7c645d5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs nav-msgs nav2d-navigator pluginlib roscpp tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds a collection of plugins for the RobotNavigator, that provide
    different cooperative exploration strategies for a team of mobile robots.'';
    license = with lib.licenses; [ gpl3 ];
  };
}
