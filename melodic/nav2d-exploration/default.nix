
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nav2d-navigator, pluginlib, catkin, roscpp, nav-msgs, visualization-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-nav2d-exploration";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/skasperski/navigation_2d-release/archive/release/melodic/nav2d_exploration/0.4.2-0.tar.gz;
    sha256 = "a66a917dec44f5f164671346050a6c578e51625a1afc22e100a4f2e40758e8af";
  };

  propagatedBuildInputs = [ nav-msgs nav2d-navigator pluginlib visualization-msgs tf roscpp geometry-msgs ];
  nativeBuildInputs = [ nav-msgs nav2d-navigator pluginlib visualization-msgs tf catkin roscpp geometry-msgs ];

  meta = {
    description = ''This package holds a collection of plugins for the RobotNavigator, that provide
    different cooperative exploration strategies for a team of mobile robots.'';
    #license = lib.licenses.GPLv3;
  };
}
