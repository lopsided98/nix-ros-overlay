
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, sensor-msgs, catkin, pcl, cv-bridge, visualization-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-multi-object-tracking-lidar";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/praveen-palanisamy/multi_object_tracking_lidar-release/archive/release/kinetic/multi_object_tracking_lidar/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "590a265934010c75fa0710236186f21afde7db849baaf125f95882114020ae36";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros sensor-msgs pcl cv-bridge visualization-msgs roscpp ];
  propagatedBuildInputs = [ pcl-ros sensor-msgs pcl cv-bridge visualization-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS package for Multiple objects detection, tracking and classification from LIDAR scans/point-clouds'';
    license = with lib.licenses; [ mit ];
  };
}
