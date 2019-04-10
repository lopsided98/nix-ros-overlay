
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, boost, tf, sensor-msgs, catkin, pythonPackages, eigen, angles, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-lunar-laser-geometry";
  version = "1.6.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/laser_geometry-release/archive/release/lunar/laser_geometry/1.6.4-0.tar.gz;
    sha256 = "fab02fa90e5d28d87d9967ffe7294f061bd292f2e5adb8d245767e52b71c002c";
  };

  buildInputs = [ cmake-modules boost eigen angles sensor-msgs tf roscpp ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ pythonPackages.numpy boost eigen angles sensor-msgs tf roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a class for converting from a 2D laser scan as defined by
    sensor_msgs/LaserScan into a point cloud as defined by sensor_msgs/PointCloud
    or sensor_msgs/PointCloud2. In particular, it contains functionality to account
    for the skew resulting from moving robots or tilting laser scanners.'';
    #license = lib.licenses.BSD;
  };
}
