
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, rclcpp, sensor-msgs, std-msgs, zbar }:
buildRosPackage {
  pname = "ros-humble-zbar-ros";
  version = "0.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/zbar_ros-release/archive/release/humble/zbar_ros/0.4.0-2.tar.gz";
    name = "0.4.0-2.tar.gz";
    sha256 = "b3ce37987801cb34086090f304b8b111991460f46ee22cb06348c61b7deb26b5";
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
