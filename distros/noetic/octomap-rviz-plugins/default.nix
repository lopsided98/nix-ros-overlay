
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, octomap, octomap-msgs, qt5, roscpp, rviz }:
buildRosPackage {
  pname = "ros-noetic-octomap-rviz-plugins";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap_rviz_plugins-release/archive/release/noetic/octomap_rviz_plugins/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "bdae669effd90b5b615ae9342926a27fe51116c8061d9913da5523882223caee";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ octomap octomap-msgs qt5.qtbase roscpp rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of plugins for displaying occupancy information decoded from binary octomap messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
