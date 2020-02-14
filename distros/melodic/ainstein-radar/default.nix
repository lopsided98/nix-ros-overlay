
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ainstein-radar-drivers, ainstein-radar-filters, ainstein-radar-gazebo-plugins, ainstein-radar-msgs, ainstein-radar-rviz-plugins, ainstein-radar-tools, catkin }:
buildRosPackage {
  pname = "ros-melodic-ainstein-radar";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/AinsteinAI/ainstein_radar-release/archive/release/melodic/ainstein_radar/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "9d8c48044d1fe25bee4f8e6ab8954377d7d76b088b09a2abd8f3d74784366c90";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ainstein-radar-drivers ainstein-radar-filters ainstein-radar-gazebo-plugins ainstein-radar-msgs ainstein-radar-rviz-plugins ainstein-radar-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS support for Ainstein radar sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
