
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, osrf-testing-tools-cpp, rcl-lifecycle, rclc, std-msgs }:
buildRosPackage {
  pname = "ros-humble-rclc-lifecycle";
  version = "4.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/humble/rclc_lifecycle/4.0.2-3.tar.gz";
    name = "4.0.2-3.tar.gz";
    sha256 = "2e6a66de5084fe74522d92ec895b954dfba31c8e2aa7581145c974104e39de60";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp ];
  propagatedBuildInputs = [ lifecycle-msgs rcl-lifecycle rclc std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''rclc lifecycle convenience methods.'';
    license = with lib.licenses; [ asl20 ];
  };
}
