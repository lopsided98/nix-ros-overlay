
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, python-cmake-module, rclcpp, rcpputils, rcutils, test-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rosbag2-test-common";
  version = "0.26.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/rosbag2_test_common/0.26.9-1.tar.gz";
    name = "0.26.9-1.tar.gz";
    sha256 = "211c69d84504ebb8f5d8ae4bea10e24e363f30e9fa5452b7ddf2eb56854936fd";
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
