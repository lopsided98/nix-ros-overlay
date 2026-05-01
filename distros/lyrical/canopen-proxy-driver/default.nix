
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, canopen-base-driver, canopen-core, canopen-interfaces, rclcpp, rclcpp-components, rclcpp-lifecycle, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-lyrical-canopen-proxy-driver";
  version = "0.3.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/lyrical/canopen_proxy_driver/0.3.2-3.tar.gz";
    name = "0.3.2-3.tar.gz";
    sha256 = "11bed82aa4a3fea7bb7db88c14321803ca54d047dddad583373a64ed3dde75e0";
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
