
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cascade-lifecycle-msgs, lifecycle-msgs, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-rolling-rclcpp-cascade-lifecycle";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cascade_lifecycle-release/archive/release/rolling/rclcpp_cascade_lifecycle/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "28731034fa247f8f76d854d4711dde18e9560b7a8fe30d1057d5fe2a6cdd1351";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cascade-lifecycle-msgs lifecycle-msgs rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides a mechanism to make trees of lifecycle nodes to propagate state changes'';
    license = with lib.licenses; [ asl20 ];
  };
}
