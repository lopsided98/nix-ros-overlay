
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, boost, catkin, eigen, pythonPackages, roscpp, rosunit, sensor-msgs, tf, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-laser-geometry";
  version = "1.6.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/laser_geometry-release/archive/release/kinetic/laser_geometry/1.6.7-1.tar.gz";
    name = "1.6.7-1.tar.gz";
    sha256 = "f279119bb104347e688f05bca0ef6939d5b2fa53edca311919c4c2ed14fa763d";
  };

  buildType = "catkin";
  buildInputs = [ tf2-geometry-msgs ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ angles boost eigen pythonPackages.numpy roscpp sensor-msgs tf tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a class for converting from a 2D laser scan as defined by
    sensor_msgs/LaserScan into a point cloud as defined by sensor_msgs/PointCloud
    or sensor_msgs/PointCloud2. In particular, it contains functionality to account
    for the skew resulting from moving robots or tilting laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
