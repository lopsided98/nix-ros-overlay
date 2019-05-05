
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, rviz, qt5, trajectory-tracker-msgs }:
buildRosPackage {
  pname = "ros-melodic-trajectory-tracker-rviz-plugins";
  version = "0.3.0";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation_rviz_plugins-release/archive/release/melodic/trajectory_tracker_rviz_plugins/0.3.0-0.tar.gz;
    sha256 = "27d4fffce53dd393d4c705e38fb1f2bf9696c4a0e33081ce28db0d237994d238";
  };

  buildInputs = [ rviz trajectory-tracker-msgs pluginlib qt5.qtbase ];
  propagatedBuildInputs = [ rviz trajectory-tracker-msgs pluginlib qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rviz plugins for trajectory_tracker_msgs'';
    license = with lib.licenses; [ bsdOriginal "CC-BY-SA-3.0" ];
  };
}
