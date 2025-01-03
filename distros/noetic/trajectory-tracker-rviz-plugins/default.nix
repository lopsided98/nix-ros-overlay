
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pluginlib, qt5, rviz, trajectory-tracker-msgs }:
buildRosPackage {
  pname = "ros-noetic-trajectory-tracker-rviz-plugins";
  version = "0.17.1-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_rviz_plugins-release/archive/release/noetic/trajectory_tracker_rviz_plugins/0.17.1-1.tar.gz";
    name = "0.17.1-1.tar.gz";
    sha256 = "44d2d90da44b76629e8d64b77fd35d662bc7bb357cb51c6b85d0143043f1aed5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pluginlib qt5.qtbase rviz trajectory-tracker-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Rviz plugins for trajectory_tracker_msgs";
    license = with lib.licenses; [ bsdOriginal "Creative-Commons" ];
  };
}
