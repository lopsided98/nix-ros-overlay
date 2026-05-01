
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cascade-lifecycle-msgs, lifecycle-msgs, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-lyrical-rclcpp-cascade-lifecycle";
  version = "2.0.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cascade_lifecycle-release/archive/release/lyrical/rclcpp_cascade_lifecycle/2.0.4-3.tar.gz";
    name = "2.0.4-3.tar.gz";
    sha256 = "5f01010e5e4ad3b78d8dac877a1ba027c5a8400aa7c807c716c504f6c7a6ce03";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cascade-lifecycle-msgs lifecycle-msgs rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provides a mechanism to make trees of lifecycle nodes to propagate state changes";
    license = with lib.licenses; [ asl20 ];
  };
}
