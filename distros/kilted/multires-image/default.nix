
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, geometry-msgs, gps-msgs, mapviz, pluginlib, qt5, rclcpp, rclpy, swri-math-util, swri-transform-util, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-multires-image";
  version = "2.4.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/kilted/multires_image/2.4.8-1.tar.gz";
    name = "2.4.8-1.tar.gz";
    sha256 = "5927370913e15ac0ddd24b96baa1828fa627246b4cd66a66985c1871728baa56";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs gps-msgs mapviz pluginlib qt5.qtbase rclcpp rclpy swri-math-util swri-transform-util tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake qt5.qtbase ];

  meta = {
    description = "multires_image";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
