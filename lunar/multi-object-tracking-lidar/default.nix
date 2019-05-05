
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl, sensor-msgs, catkin, cv-bridge, roscpp, pcl-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-lunar-multi-object-tracking-lidar";
  version = "1.0.1-r1";

  src = fetchurl {
    url = https://github.com/praveen-palanisamy/multi_object_tracking_lidar-release/archive/release/lunar/multi_object_tracking_lidar/1.0.1-1.tar.gz;
    sha256 = "6542530374f092cf5162268364aa453705f42c8e4a5ff84272dee0a4aae5eec9";
  };

  buildInputs = [ pcl sensor-msgs cv-bridge roscpp pcl-ros visualization-msgs ];
  propagatedBuildInputs = [ pcl sensor-msgs cv-bridge roscpp pcl-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS package for Multiple objects detection, tracking and classification from LIDAR scans/point-clouds'';
    license = with lib.licenses; [ mit ];
  };
}
