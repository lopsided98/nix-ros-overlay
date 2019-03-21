
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, rviz, qt5, trajectory-tracker-msgs }:
buildRosPackage {
  pname = "ros-kinetic-trajectory-tracker-rviz-plugins";
  version = "0.3.0";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation_rviz_plugins-release/archive/release/kinetic/trajectory_tracker_rviz_plugins/0.3.0-0.tar.gz;
    sha256 = "70ed4252d7585b2e1e7f12f71f1f5f50b10e71b004f1e40b4b1120010f3c7284";
  };

  propagatedBuildInputs = [ rviz trajectory-tracker-msgs pluginlib qt5.qtbase ];
  nativeBuildInputs = [ rviz trajectory-tracker-msgs pluginlib catkin qt5.qtbase ];

  meta = {
    description = ''Rviz plugins for trajectory_tracker_msgs'';
    #license = lib.licenses.BSD;
  };
}
