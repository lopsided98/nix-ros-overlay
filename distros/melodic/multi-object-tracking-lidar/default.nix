
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, pcl, pcl-ros, roscpp, sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-multi-object-tracking-lidar";
  version = "1.0.4-r2";

  src = fetchurl {
    url = "https://github.com/praveen-palanisamy/multi_object_tracking_lidar-release/archive/release/melodic/multi_object_tracking_lidar/1.0.4-2.tar.gz";
    name = "1.0.4-2.tar.gz";
    sha256 = "63755a5dbaa0f51fce61f80fb41810d2dbeee04ea715a685ea4e130ccb6691fe";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge pcl pcl-ros roscpp sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS package for Multiple objects detection, tracking and classification from LIDAR scans/point-clouds'';
    license = with lib.licenses; [ mit ];
  };
}
