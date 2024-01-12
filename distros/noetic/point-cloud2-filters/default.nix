
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, filters, pcl-conversions, pcl-ros, pluginlib, roscpp, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-point-cloud2-filters";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ADVRHumanoids/point_cloud2_filters-release/archive/release/noetic/point_cloud2_filters/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "2d850891e224b1416a67e4087e55302cadfd6928eedfd99385ddccd59e5c8cd4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ filters pcl-conversions pcl-ros pluginlib roscpp sensor-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Filters for the sensor_msgs/PointCloud2 based on the filters and sensor_filters chains'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
