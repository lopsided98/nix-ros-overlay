
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pluginlib, qt5, rviz, trajectory-tracker-msgs }:
buildRosPackage {
  pname = "ros-noetic-trajectory-tracker-rviz-plugins";
  version = "0.11.6-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_rviz_plugins-release/archive/release/noetic/trajectory_tracker_rviz_plugins/0.11.6-1.tar.gz";
    name = "0.11.6-1.tar.gz";
    sha256 = "74cefaa38f778b4300bc792456ff65dfc5741afa6a8a6d5aee8d56a75591107b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pluginlib qt5.qtbase rviz trajectory-tracker-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rviz plugins for trajectory_tracker_msgs'';
    license = with lib.licenses; [ bsdOriginal "Creative-Commons" ];
  };
}
