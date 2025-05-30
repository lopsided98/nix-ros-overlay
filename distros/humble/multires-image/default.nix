
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, geometry-msgs, gps-msgs, mapviz, pluginlib, qt5, rclcpp, rclpy, swri-math-util, swri-transform-util, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-multires-image";
  version = "2.4.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/humble/multires_image/2.4.9-1.tar.gz";
    name = "2.4.9-1.tar.gz";
    sha256 = "1ac682fbe4cb08011ad740808d985aa6bccb6cb3e35ac1a979df004971d00b68";
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
