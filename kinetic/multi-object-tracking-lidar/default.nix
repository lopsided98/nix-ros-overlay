
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl, sensor-msgs, catkin, pcl-ros, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-multi-object-tracking-lidar";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/praveen-palanisamy/multi_object_tracking_lidar-release/archive/release/kinetic/multi_object_tracking_lidar/1.0.0-0.tar.gz;
    sha256 = "c1d2e4182a0d9803072d8d3926bb322efb2bb10b4ec212735a2195e96466e7fa";
  };

  buildInputs = [ pcl sensor-msgs roscpp pcl-ros ];
  propagatedBuildInputs = [ pcl sensor-msgs roscpp pcl-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS package for Multiple objects detection, tracking and classification from LIDAR scans/point-clouds'';
    #license = lib.licenses.MIT;
  };
}
