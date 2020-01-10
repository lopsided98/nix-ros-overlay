
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, boost, catkin, cmake-modules, eigen, pythonPackages, roscpp, rosunit, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-laser-geometry";
  version = "1.6.4";

  src = fetchurl {
    url = "https://github.com/ros-gbp/laser_geometry-release/archive/release/melodic/laser_geometry/1.6.4-0.tar.gz";
    name = "1.6.4-0.tar.gz";
    sha256 = "d2c0acb926c14dd2000db4b395b3bbcc26b53fc76461f4cf7c262947e3ed9138";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ angles boost eigen pythonPackages.numpy roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a class for converting from a 2D laser scan as defined by
    sensor_msgs/LaserScan into a point cloud as defined by sensor_msgs/PointCloud
    or sensor_msgs/PointCloud2. In particular, it contains functionality to account
    for the skew resulting from moving robots or tilting laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
