
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, rclcpp, sensor-msgs, std-msgs, zbar, zbar-ros-interfaces }:
buildRosPackage {
  pname = "ros-rolling-zbar-ros";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/zbar_ros-release/archive/release/rolling/zbar_ros/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "2bcb4ec159e4fbb67cfa13d16743c1e2f456e5667b11d26d6ec4540668eb6c4e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge rclcpp sensor-msgs std-msgs zbar zbar-ros-interfaces ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Lightweight ROS wrapper for Zbar barcode/qrcode reader library (http://zbar.sourceforge
    .net/)";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
