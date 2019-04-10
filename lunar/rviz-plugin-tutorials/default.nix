
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz, qt5 }:
buildRosPackage {
  pname = "ros-lunar-rviz-plugin-tutorials";
  version = "0.10.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/visualization_tutorials-release/archive/release/lunar/rviz_plugin_tutorials/0.10.3-0.tar.gz;
    sha256 = "b78a707402e4ed5e03b4fde92ecdfb51644fbcf6175ab4a646aec1708ce10b5a";
  };

  buildInputs = [ rviz qt5.qtbase ];
  propagatedBuildInputs = [ rviz qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tutorials showing how to write plugins for RViz.'';
    #license = lib.licenses.BSD;
  };
}
