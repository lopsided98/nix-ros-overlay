
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, octomap, octomap-msgs, roscpp, rviz }:
buildRosPackage {
  pname = "ros-kinetic-octomap-rviz-plugins";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap_rviz_plugins-release/archive/release/kinetic/octomap_rviz_plugins/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "72f811c29603254838cd28a71a97c4ccc029ac5e046e121e662274a9e7519e5d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ octomap octomap-msgs roscpp rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of plugins for displaying occupancy information decoded from binary octomap messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
