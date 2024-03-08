
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, geometry-msgs, gps-msgs, mapviz, pluginlib, qt5, rclcpp, rclpy, swri-math-util, swri-transform-util, tf2 }:
buildRosPackage {
  pname = "ros-rolling-multires-image";
  version = "2.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/rolling/multires_image/2.3.0-2.tar.gz";
    name = "2.3.0-2.tar.gz";
    sha256 = "168a574be48a5a72bf3f950e874a473b11f3d536addeef3043ab6468770fd116";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs gps-msgs mapviz pluginlib qt5.qtbase rclcpp rclpy swri-math-util swri-transform-util tf2 ];
  nativeBuildInputs = [ ament-cmake qt5.qtbase ];

  meta = {
    description = ''multires_image'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
