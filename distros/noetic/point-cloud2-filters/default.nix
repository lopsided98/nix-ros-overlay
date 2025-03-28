
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, filters, pcl-conversions, pcl-ros, pluginlib, roscpp, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-point-cloud2-filters";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ADVRHumanoids/point_cloud2_filters-release/archive/release/noetic/point_cloud2_filters/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "c42d725fdd2cdea4a95a35a05d19410e10de889dcde3539a52e4c21d67e54653";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ filters pcl-conversions pcl-ros pluginlib roscpp sensor-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Filters for the sensor_msgs/PointCloud2 based on the filters and sensor_filters chains";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
