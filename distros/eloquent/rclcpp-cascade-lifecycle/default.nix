
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cascade-lifecycle-msgs, lifecycle-msgs, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-eloquent-rclcpp-cascade-lifecycle";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/fmrico/cascade_lifecycle-release/archive/release/eloquent/rclcpp_cascade_lifecycle/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "be8b88406ea98548f7931a0f2c7519ca5aab9465440bda3eeeb347416d174bfd";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cascade-lifecycle-msgs lifecycle-msgs rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides a mechanism to make trees of lifecycle nodes to propagate state changes'';
    license = with lib.licenses; [ asl20 ];
  };
}
