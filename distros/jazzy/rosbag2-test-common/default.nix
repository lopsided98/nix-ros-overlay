
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, python-cmake-module, rclcpp, rcutils }:
buildRosPackage {
  pname = "ros-jazzy-rosbag2-test-common";
  version = "0.26.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/rosbag2_test_common/0.26.4-1.tar.gz";
    name = "0.26.4-1.tar.gz";
    sha256 = "42ed5828810b87bc1827c9587ac2c1e8c13048fdf0c0cdaedadfc734059f4650";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python-cmake-module ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rcutils ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python python-cmake-module ];

  meta = {
    description = "Commonly used test helper classes and fixtures for rosbag2";
    license = with lib.licenses; [ asl20 ];
  };
}
