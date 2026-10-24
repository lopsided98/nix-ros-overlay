
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cascade-lifecycle-msgs, lifecycle-msgs, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-humble-rclcpp-cascade-lifecycle";
  version = "2.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cascade_lifecycle-release/archive/release/humble/rclcpp_cascade_lifecycle/2.0.7-1.tar.gz";
    name = "2.0.7-1.tar.gz";
    sha256 = "2bf78d0989867bb166e9e09aa4a52fe5e5585f5cef95099f56f7ef78d9d8efcb";
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
