
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-action, rcpputils, rcutils, test-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rosbag2-test-common";
  version = "0.33.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/lyrical/rosbag2_test_common/0.33.3-1.tar.gz";
    name = "0.33.3-1.tar.gz";
    sha256 = "1bc021de1af3b5d24489aed4bdf739d80618b5f625c48f935a7e0217b1d76a6b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-action rcpputils rcutils test-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Commonly used test helper classes and fixtures for rosbag2";
    license = with lib.licenses; [ asl20 ];
  };
}
