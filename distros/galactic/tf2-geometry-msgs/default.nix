
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, geometry-msgs, orocos-kdl, rclcpp, tf2, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-galactic-tf2-geometry-msgs";
  version = "0.17.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/galactic/tf2_geometry_msgs/0.17.2-1.tar.gz";
    name = "0.17.2-1.tar.gz";
    sha256 = "a6edf35a3a2240d4d9237efcd03d5cad8c4b76b25168754940db2d26936d7f60";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest rclcpp ];
  propagatedBuildInputs = [ geometry-msgs orocos-kdl tf2 tf2-ros tf2-ros-py ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''tf2_geometry_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
