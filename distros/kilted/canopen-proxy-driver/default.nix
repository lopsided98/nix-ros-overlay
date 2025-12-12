
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, canopen-base-driver, canopen-core, canopen-interfaces, rclcpp, rclcpp-components, rclcpp-lifecycle, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kilted-canopen-proxy-driver";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/kilted/canopen_proxy_driver/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "c00a7a5e03b798992edeab4fef61e7dc062ee74530e4f523dee69f455f97f50d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ canopen-base-driver canopen-core canopen-interfaces rclcpp rclcpp-components rclcpp-lifecycle std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Simple proxy driver for the ros2_canopen stack";
    license = with lib.licenses; [ asl20 ];
  };
}
