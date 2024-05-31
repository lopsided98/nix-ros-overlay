
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, canopen-base-driver, canopen-core, canopen-interfaces, rclcpp, rclcpp-components, rclcpp-lifecycle, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-canopen-proxy-driver";
  version = "0.2.9-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/jazzy/canopen_proxy_driver/0.2.9-2.tar.gz";
    name = "0.2.9-2.tar.gz";
    sha256 = "620e871df877b6884998999b6968bb186d35f7581ff368161561f25fedc34f3e";
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
