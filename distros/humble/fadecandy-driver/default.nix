
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, diagnostic-updater, fadecandy-msgs, libusb1, rclcpp, rclpy }:
buildRosPackage {
  pname = "ros-humble-fadecandy-driver";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/eurogroep/fadecandy_ros-release/archive/release/humble/fadecandy_driver/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "efb31dbc7b4690dcf552e0d0156cba5baaa467bea7904d080fe48a15fe59ffbc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ rclpy ];
  propagatedBuildInputs = [ diagnostic-updater fadecandy-msgs libusb1 rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS driver for fadecandy LED controllers'';
    license = with lib.licenses; [ asl20 ];
  };
}
