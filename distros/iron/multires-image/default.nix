
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, geometry-msgs, gps-msgs, mapviz, pluginlib, qt5, rclcpp, rclpy, swri-math-util, swri-transform-util, tf2 }:
buildRosPackage {
  pname = "ros-iron-multires-image";
  version = "2.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/iron/multires_image/2.4.2-1.tar.gz";
    name = "2.4.2-1.tar.gz";
    sha256 = "d17481d7714cc6f7b096d6e3eab6a4f6510eae8c604306a2a548073f1b2366f6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs gps-msgs mapviz pluginlib qt5.qtbase rclcpp rclpy swri-math-util swri-transform-util tf2 ];
  nativeBuildInputs = [ ament-cmake qt5.qtbase ];

  meta = {
    description = "multires_image";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
