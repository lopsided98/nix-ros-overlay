
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, rclcpp, sensor-msgs, std-msgs, zbar, zbar-ros-interfaces }:
buildRosPackage {
  pname = "ros-lyrical-zbar-ros";
  version = "0.7.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/zbar_ros-release/archive/release/lyrical/zbar_ros/0.7.0-3.tar.gz";
    name = "0.7.0-3.tar.gz";
    sha256 = "687d94a61bad08a8aeab6366eb7c8717d1457226279cead166b934f9514bc3a1";
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
