
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl, sensor-msgs, catkin, pcl-ros, roscpp }:
buildRosPackage {
  pname = "ros-melodic-multi-object-tracking-lidar";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/praveen-palanisamy/multi_object_tracking_lidar-release/archive/release/melodic/multi_object_tracking_lidar/1.0.0-0.tar.gz;
    sha256 = "b1d366b334c7d7b1e9fde0909627106eb470b3aba815186b4770ab979e73b6a0";
  };

  buildInputs = [ pcl sensor-msgs roscpp pcl-ros ];
  propagatedBuildInputs = [ pcl sensor-msgs roscpp pcl-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS package for Multiple objects detection, tracking and classification from LIDAR scans/point-clouds'';
    #license = lib.licenses.MIT;
  };
}
