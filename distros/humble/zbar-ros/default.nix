
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, rclcpp, sensor-msgs, std-msgs, zbar }:
buildRosPackage {
  pname = "ros-humble-zbar-ros";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/zbar_ros-release/archive/release/humble/zbar_ros/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "c1800fa953d28556f1ad744dc71d5d43e85fb1b6355d31f730a43f19b189b65a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge rclcpp sensor-msgs std-msgs zbar ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Lightweight ROS wrapper for Zbar barcode/qrcode reader library (http://zbar.sourceforge
    .net/)";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
