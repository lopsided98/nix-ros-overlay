
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pluginlib, qt5, rviz, trajectory-tracker-msgs }:
buildRosPackage {
  pname = "ros-melodic-trajectory-tracker-rviz-plugins";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_rviz_plugins-release/archive/release/melodic/trajectory_tracker_rviz_plugins/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "88610d9daa40e3d207bbfb52ef01f29b097544c6ab33557caad96f9eae15c273";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pluginlib qt5.qtbase rviz trajectory-tracker-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rviz plugins for trajectory_tracker_msgs'';
    license = with lib.licenses; [ bsdOriginal "CC-BY-SA-3.0" ];
  };
}
