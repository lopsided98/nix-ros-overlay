
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cascade-lifecycle-msgs, lifecycle-msgs, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-iron-rclcpp-cascade-lifecycle";
  version = "1.0.3-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cascade_lifecycle-release/archive/release/iron/rclcpp_cascade_lifecycle/1.0.3-5.tar.gz";
    name = "1.0.3-5.tar.gz";
    sha256 = "26f5ceedbabb6c2ae68eef1b1a5a507e2b3cea686ce2ea99b2adc87d2d40a656";
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
