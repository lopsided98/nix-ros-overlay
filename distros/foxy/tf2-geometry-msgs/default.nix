
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, geometry-msgs, orocos-kdl, rclcpp, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-tf2-geometry-msgs";
  version = "0.13.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/foxy/tf2_geometry_msgs/0.13.4-1.tar.gz";
    name = "0.13.4-1.tar.gz";
    sha256 = "11f7298d9427caaf04dd8499186d78d0c017ac5441c4dd74df928001c0a8ae95";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest rclcpp ];
  propagatedBuildInputs = [ geometry-msgs orocos-kdl tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''tf2_geometry_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
