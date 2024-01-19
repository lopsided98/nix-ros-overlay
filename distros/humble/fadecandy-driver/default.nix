
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, diagnostic-updater, fadecandy-msgs, libusb1, pkg-config, rclcpp, rclpy }:
buildRosPackage {
  pname = "ros-humble-fadecandy-driver";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/eurogroep/fadecandy_ros-release/archive/release/humble/fadecandy_driver/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "cf122b02c764947767a7351a8a4e60b2a0bbcf93b9f4311761ec4e7e015429dc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ rclpy ];
  propagatedBuildInputs = [ diagnostic-updater fadecandy-msgs libusb1 rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS driver for fadecandy LED controllers'';
    license = with lib.licenses; [ asl20 ];
  };
}
