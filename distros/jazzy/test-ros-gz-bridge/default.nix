
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, launch-ros, launch-testing, launch-testing-ament-cmake, ros-gz-bridge }:
buildRosPackage {
  pname = "ros-jazzy-test-ros-gz-bridge";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/jazzy/test_ros_gz_bridge/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "08388f37235b15dc89829e2152da1db56959b27d685f6ba1231b3261358eb526";
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
