
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, geometry-msgs, rclcpp, rclcpp-components, sensor-msgs, serial-driver, std-msgs, vesc-msgs }:
buildRosPackage {
  pname = "ros-foxy-vesc-driver";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/f1tenth/vesc-release/archive/release/foxy/vesc_driver/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "8a9d79e5a083b773bde8d7f0efa1b84d64778a34cf1092899418392b7e41f988";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rclcpp rclcpp-components sensor-msgs serial-driver std-msgs vesc-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''ROS device driver for the Vedder VESC open source motor driver.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
