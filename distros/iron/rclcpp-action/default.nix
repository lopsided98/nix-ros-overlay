
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, mimick-vendor, performance-test-fixture, rcl-action, rclcpp, rcpputils, rosidl-runtime-c, test-msgs }:
buildRosPackage {
  pname = "ros-iron-rclcpp-action";
  version = "21.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/iron/rclcpp_action/21.0.5-1.tar.gz";
    name = "21.0.5-1.tar.gz";
    sha256 = "dc37354726b0f11da36d2555a23273a68207c6beeb361929e606174248d76485";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common mimick-vendor performance-test-fixture test-msgs ];
  propagatedBuildInputs = [ action-msgs ament-cmake rcl-action rclcpp rcpputils rosidl-runtime-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Adds action APIs for C++.";
    license = with lib.licenses; [ asl20 ];
  };
}
