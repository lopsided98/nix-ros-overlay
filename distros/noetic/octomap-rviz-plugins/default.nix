
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, octomap, octomap-msgs, qt5, roscpp, rviz }:
buildRosPackage {
  pname = "ros-noetic-octomap-rviz-plugins";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap_rviz_plugins-release/archive/release/noetic/octomap_rviz_plugins/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "a4df6a9a9bc37d5722c20b8e4da89ed1c14891c825f705b43e9fb26e2dcdc7f8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ octomap octomap-msgs qt5.qtbase roscpp rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of plugins for displaying occupancy information decoded from binary octomap messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
