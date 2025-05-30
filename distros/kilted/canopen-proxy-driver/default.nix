
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, canopen-base-driver, canopen-core, canopen-interfaces, rclcpp, rclcpp-components, rclcpp-lifecycle, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kilted-canopen-proxy-driver";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/kilted/canopen_proxy_driver/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "4e1b0d004f7e4a5eafdce1347fc7e94d7d72ff39992063973d49c3266113e502";
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
