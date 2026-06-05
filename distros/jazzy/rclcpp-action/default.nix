
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, mimick-vendor, performance-test-fixture, rcl, rcl-action, rclcpp, rcpputils, rosidl-runtime-c, test-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rclcpp-action";
  version = "28.1.19-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/jazzy/rclcpp_action/28.1.19-1.tar.gz";
    name = "28.1.19-1.tar.gz";
    sha256 = "50525c801475e946283e11233c0dd0c2bfe24508ab69130e76c803087c21f4e6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common mimick-vendor performance-test-fixture test-msgs ];
  propagatedBuildInputs = [ action-msgs ament-cmake rcl rcl-action rclcpp rcpputils rosidl-runtime-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Adds action APIs for C++.";
    license = with lib.licenses; [ asl20 ];
  };
}
