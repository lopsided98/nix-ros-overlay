
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, geometry-msgs, orocos-kdl, rclcpp, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-tf2-geometry-msgs";
  version = "0.13.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/foxy/tf2_geometry_msgs/0.13.7-1.tar.gz";
    name = "0.13.7-1.tar.gz";
    sha256 = "6a53098e577e2bb8531ca99032bc20d7c98a51261b2b8d888bab86aa9b538b9a";
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
