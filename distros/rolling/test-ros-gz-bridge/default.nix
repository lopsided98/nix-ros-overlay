
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, launch-ros, launch-testing, launch-testing-ament-cmake, ros-gz-bridge }:
buildRosPackage {
  pname = "ros-rolling-test-ros-gz-bridge";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/rolling/test_ros_gz_bridge/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "3c2d9eef557a0196318c343c7fb717a2add2fdf9a4677a30cb2a742215989dc6";
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
