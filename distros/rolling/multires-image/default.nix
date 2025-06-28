
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, mapviz, pluginlib, qt5, rclcpp, rclpy, swri-math-util, swri-transform-util, tf2 }:
buildRosPackage {
  pname = "ros-rolling-multires-image";
  version = "2.5.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/rolling/multires_image/2.5.6-1.tar.gz";
    name = "2.5.6-1.tar.gz";
    sha256 = "85ef3d6906bd5fabcfd80c659f6fef242fa851bfc11af75ce147511eb63a96ce";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs mapviz pluginlib qt5.qtbase rclcpp rclpy swri-math-util swri-transform-util tf2 ];
  nativeBuildInputs = [ ament-cmake qt5.qtbase ];

  meta = {
    description = "multires_image";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
