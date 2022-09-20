
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, octomap, octomap-msgs, qt5, roscpp, rviz }:
buildRosPackage {
  pname = "ros-melodic-octomap-rviz-plugins";
  version = "0.2.4-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap_rviz_plugins-release/archive/release/melodic/octomap_rviz_plugins/0.2.4-2.tar.gz";
    name = "0.2.4-2.tar.gz";
    sha256 = "8f5bf0f81a1734bd921fbb238890d39f32aad30f614d6b7437a42715ff8cb1b4";
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
