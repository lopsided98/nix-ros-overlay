
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, boost, catkin, eigen, python3Packages, roscpp, rosunit, sensor-msgs, tf, tf2 }:
buildRosPackage {
  pname = "ros-noetic-laser-geometry";
  version = "1.6.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/laser_geometry-release/archive/release/noetic/laser_geometry/1.6.5-1.tar.gz";
    name = "1.6.5-1.tar.gz";
    sha256 = "323b9869bfd32eb57e048ec23f4d7b12f3a975fe617820ac8f9555c950f8a759";
  };

  buildType = "catkin";
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ angles boost eigen python3Packages.numpy roscpp sensor-msgs tf tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a class for converting from a 2D laser scan as defined by
    sensor_msgs/LaserScan into a point cloud as defined by sensor_msgs/PointCloud
    or sensor_msgs/PointCloud2. In particular, it contains functionality to account
    for the skew resulting from moving robots or tilting laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
