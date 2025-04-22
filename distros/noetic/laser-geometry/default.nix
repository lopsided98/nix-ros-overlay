
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, boost, catkin, eigen, python3Packages, roscpp, rostest, rosunit, sensor-msgs, tf, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-noetic-laser-geometry";
  version = "1.6.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/laser_geometry-release/archive/release/noetic/laser_geometry/1.6.8-1.tar.gz";
    name = "1.6.8-1.tar.gz";
    sha256 = "62de824e97364108be9f63407bceb417149d89f6f29b6161b8877826667f960d";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ angles boost eigen python3Packages.numpy roscpp sensor-msgs tf tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package contains a class for converting from a 2D laser scan as defined by
    sensor_msgs/LaserScan into a point cloud as defined by sensor_msgs/PointCloud
    or sensor_msgs/PointCloud2. In particular, it contains functionality to account
    for the skew resulting from moving robots or tilting laser scanners.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
