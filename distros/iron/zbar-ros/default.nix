
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, rclcpp, sensor-msgs, std-msgs, zbar }:
buildRosPackage {
  pname = "ros-iron-zbar-ros";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/zbar_ros-release/archive/release/iron/zbar_ros/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "609142dd6f38b52689efa7a76fc53b9039a272586cc43c42afa787c0aa2894c8";
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
