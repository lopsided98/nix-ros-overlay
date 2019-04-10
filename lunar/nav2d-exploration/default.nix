
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nav2d-navigator, pluginlib, catkin, roscpp, nav-msgs, visualization-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-nav2d-exploration";
  version = "0.4.1";

  src = fetchurl {
    url = https://github.com/skasperski/navigation_2d-release/archive/release/lunar/nav2d_exploration/0.4.1-0.tar.gz;
    sha256 = "db609b01bc3b2c79a545d4ae687ef0486e8ef0b9cfd4ed5298d44cbc12dc9a1a";
  };

  buildInputs = [ nav-msgs nav2d-navigator pluginlib visualization-msgs tf roscpp geometry-msgs ];
  propagatedBuildInputs = [ nav-msgs nav2d-navigator pluginlib visualization-msgs tf roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds a collection of plugins for the RobotNavigator, that provide
    different cooperative exploration strategies for a team of mobile robots.'';
    #license = lib.licenses.GPLv3;
  };
}
