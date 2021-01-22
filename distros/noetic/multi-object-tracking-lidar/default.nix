
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, pcl, pcl-ros, roscpp, sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-multi-object-tracking-lidar";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/praveen-palanisamy/multi_object_tracking_lidar-release/archive/release/noetic/multi_object_tracking_lidar/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "c9453caabc6fbc604c796da7cc2fded0ab86d8c410c3232b67d54e7d0d25e6c0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge pcl pcl-ros roscpp sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS package for Multiple objects detection, tracking and classification from LIDAR scans/point-clouds'';
    license = with lib.licenses; [ mit ];
  };
}
