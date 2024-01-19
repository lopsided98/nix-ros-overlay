
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, rclcpp, sensor-msgs, std-msgs, zbar }:
buildRosPackage {
  pname = "ros-iron-zbar-ros";
  version = "0.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/zbar_ros-release/archive/release/iron/zbar_ros/0.4.0-3.tar.gz";
    name = "0.4.0-3.tar.gz";
    sha256 = "2100de4262cf1ef354f3b715aca036fcaf3008d923b3be2c0c49ee1416dab2d5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge rclcpp sensor-msgs std-msgs zbar ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Lightweight ROS wrapper for Zbar barcode/qrcode reader library (http://zbar.sourceforge
    .net/)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
