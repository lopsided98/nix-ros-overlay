
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-lint-auto, ament-lint-common, apriltag-detector, apriltag-draw, apriltag-msgs, rclcpp, ros-environment, rosbag2-transport }:
buildRosPackage {
  pname = "ros-rolling-apriltag-tools";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_detector-release/archive/release/rolling/apriltag_tools/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "530b5ca90094dfa4e0239ab3bc0834430eefd7704c012824154da17555ce64bb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ apriltag-detector apriltag-draw apriltag-msgs rclcpp rosbag2-transport ];
  nativeBuildInputs = [ ament-cmake ros-environment ];

  meta = {
    description = "misc tools for working with apriltags under ROS2";
    license = with lib.licenses; [ asl20 ];
  };
}
