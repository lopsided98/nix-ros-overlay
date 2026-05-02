
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, rclcpp, sensor-msgs, std-msgs, zbar, zbar-ros-interfaces }:
buildRosPackage {
  pname = "ros-rolling-zbar-ros";
  version = "0.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/zbar_ros-release/archive/release/rolling/zbar_ros/0.7.0-2.tar.gz";
    name = "0.7.0-2.tar.gz";
    sha256 = "359234c11f8953768b995c2d4c6431817b4c112aadee4932f34a280638e0b19d";
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
