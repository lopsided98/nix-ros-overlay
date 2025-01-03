
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cascade-lifecycle-msgs, lifecycle-msgs, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-rolling-rclcpp-cascade-lifecycle";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cascade_lifecycle-release/archive/release/rolling/rclcpp_cascade_lifecycle/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "1ac403e63baf0a27ece717b9cb2512adfefb1f64ca4a78856d8b5f1f7ad021d7";
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
