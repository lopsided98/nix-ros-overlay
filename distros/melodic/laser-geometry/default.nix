
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, boost, catkin, eigen, pythonPackages, roscpp, rosunit, sensor-msgs, tf, tf2 }:
buildRosPackage {
  pname = "ros-melodic-laser-geometry";
  version = "1.6.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/laser_geometry-release/archive/release/melodic/laser_geometry/1.6.5-1.tar.gz";
    name = "1.6.5-1.tar.gz";
    sha256 = "e1064427a3ab09ecaf250925472343410cb1b9e3fdb2cf7b07e9e953ad4616c5";
  };

  buildType = "catkin";
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
