
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, launch-ros, launch-testing, launch-testing-ament-cmake, ros-gz-bridge }:
buildRosPackage {
  pname = "ros-kilted-test-ros-gz-bridge";
  version = "2.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/kilted/test_ros_gz_bridge/2.1.8-1.tar.gz";
    name = "2.1.8-1.tar.gz";
    sha256 = "4b687a6e4499977ddfdcac4a829c8e1425e2d58649ed1fffd9a1a29a2e89ec60";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch-ros launch-testing launch-testing-ament-cmake ];
  propagatedBuildInputs = [ ros-gz-bridge ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Bridge communication between ROS and Gazebo Transport";
    license = with lib.licenses; [ asl20 ];
  };
}
