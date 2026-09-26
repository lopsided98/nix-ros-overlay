
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, diagnostic-updater, fadecandy-msgs, libusb1, pkg-config, rclcpp, rclpy }:
buildRosPackage {
  pname = "ros-lyrical-fadecandy-driver";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/eurogroep/fadecandy_ros-release/archive/release/lyrical/fadecandy_driver/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "de2d3eb7bddfedfccfc031bb32ae157d99b8a005ec2ba8fead86738e5393339e";
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
