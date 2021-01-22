
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, pcl, pcl-ros, roscpp, sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-multi-object-tracking-lidar";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/praveen-palanisamy/multi_object_tracking_lidar-release/archive/release/melodic/multi_object_tracking_lidar/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "736bfb056dc664589213481247b3c7c824f011e8ed6edcf937eb5dcc5e7b7790";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge pcl pcl-ros roscpp sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS package for Multiple objects detection, tracking and classification from LIDAR scans/point-clouds'';
    license = with lib.licenses; [ mit ];
  };
}
