
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, mimick-vendor, performance-test-fixture, rcl-action, rclcpp, rosidl-runtime-c, test-msgs }:
buildRosPackage {
  pname = "ros-foxy-rclcpp-action";
  version = "2.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/foxy/rclcpp_action/2.4.2-1.tar.gz";
    name = "2.4.2-1.tar.gz";
    sha256 = "39e3abdf2001cd8671547b55ebb907302eddfaf12c1b57f21a7c211481a25722";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common mimick-vendor performance-test-fixture test-msgs ];
  propagatedBuildInputs = [ action-msgs ament-cmake rcl-action rclcpp rosidl-runtime-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Adds action APIs for C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
