
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pluginlib, qt5, rviz, trajectory-tracker-msgs }:
buildRosPackage {
  pname = "ros-kinetic-trajectory-tracker-rviz-plugins";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_rviz_plugins-release/archive/release/kinetic/trajectory_tracker_rviz_plugins/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "99c0f4d32733046d93d75e93d852e95d029bce05475bde99d91b44171eca94d2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pluginlib qt5.qtbase rviz trajectory-tracker-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rviz plugins for trajectory_tracker_msgs'';
    license = with lib.licenses; [ bsdOriginal "CC-BY-SA-3.0" ];
  };
}
