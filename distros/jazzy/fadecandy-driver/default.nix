
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, diagnostic-updater, fadecandy-msgs, libusb1, pkg-config, rclcpp, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-fadecandy-driver";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/eurogroep/fadecandy_ros-release/archive/release/jazzy/fadecandy_driver/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "8f3b26283e92fc25f1edc8a08986f69a79afcc65fcefb718546e72c51458e200";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ rclpy ];
  propagatedBuildInputs = [ diagnostic-updater fadecandy-msgs libusb1 rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS driver for fadecandy LED controllers";
    license = with lib.licenses; [ asl20 ];
  };
}
