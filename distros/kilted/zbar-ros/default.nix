
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, rclcpp, sensor-msgs, std-msgs, zbar, zbar-ros-interfaces }:
buildRosPackage {
  pname = "ros-kilted-zbar-ros";
  version = "0.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/zbar_ros-release/archive/release/kilted/zbar_ros/0.7.0-2.tar.gz";
    name = "0.7.0-2.tar.gz";
    sha256 = "e2456e09de9e37a63b896bb684702255780f0768f1f9fb06cc98ffd5e8435a48";
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
