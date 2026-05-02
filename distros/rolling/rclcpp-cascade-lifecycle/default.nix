
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cascade-lifecycle-msgs, lifecycle-msgs, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-rolling-rclcpp-cascade-lifecycle";
  version = "2.0.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cascade_lifecycle-release/archive/release/rolling/rclcpp_cascade_lifecycle/2.0.4-2.tar.gz";
    name = "2.0.4-2.tar.gz";
    sha256 = "4eea74071be7c48a3a2c4b62cf03c5a6eebd62f1512cfad8d045f6680f51f01b";
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
