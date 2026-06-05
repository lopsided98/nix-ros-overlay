
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, python-cmake-module, rclcpp, rcpputils, rcutils, test-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rosbag2-test-common";
  version = "0.26.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/rosbag2_test_common/0.26.11-1.tar.gz";
    name = "0.26.11-1.tar.gz";
    sha256 = "e19b8a875c5ac80ceb9d82fc1b0bd9bc4bbef751d7f00185c9dc7758045d7c71";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python-cmake-module ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rcpputils rcutils test-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python python-cmake-module ];

  meta = {
    description = "Commonly used test helper classes and fixtures for rosbag2";
    license = with lib.licenses; [ asl20 ];
  };
}
