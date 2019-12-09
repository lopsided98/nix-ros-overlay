
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, boost, tf, pythonPackages, cmake-modules, catkin, rosunit, eigen, roscpp, angles }:
buildRosPackage {
  pname = "ros-kinetic-laser-geometry";
  version = "1.6.4";

  src = fetchurl {
    url = "https://github.com/ros-gbp/laser_geometry-release/archive/release/kinetic/laser_geometry/1.6.4-0.tar.gz";
    name = "1.6.4-0.tar.gz";
    sha256 = "6f825d298f84cc46f325f39d408f9f7710c2de01d26191dbbd902d84b6687734";
  };

  buildType = "catkin";
  buildInputs = [ boost sensor-msgs tf cmake-modules eigen roscpp angles ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ pythonPackages.numpy boost sensor-msgs tf eigen roscpp angles ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a class for converting from a 2D laser scan as defined by
    sensor_msgs/LaserScan into a point cloud as defined by sensor_msgs/PointCloud
    or sensor_msgs/PointCloud2. In particular, it contains functionality to account
    for the skew resulting from moving robots or tilting laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
