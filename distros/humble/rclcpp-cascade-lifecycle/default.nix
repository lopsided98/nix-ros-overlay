
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cascade-lifecycle-msgs, lifecycle-msgs, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-humble-rclcpp-cascade-lifecycle";
  version = "1.0.1-r3";

  src = fetchurl {
    url = "https://github.com/fmrico/cascade_lifecycle-release/archive/release/humble/rclcpp_cascade_lifecycle/1.0.1-3.tar.gz";
    name = "1.0.1-3.tar.gz";
    sha256 = "f475e991ea43299644156300f0fe8c9385d3f4ca177157c316d6a06e9796fc49";
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
