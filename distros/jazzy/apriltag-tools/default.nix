
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-lint-auto, ament-lint-common, apriltag-detector, apriltag-draw, apriltag-msgs, rclcpp, ros-environment, rosbag2-transport }:
buildRosPackage {
  pname = "ros-jazzy-apriltag-tools";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_detector-release/archive/release/jazzy/apriltag_tools/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "53ea1a9f434089d6be5a94290756e3b29520435559925df714f1b3dd0a98dbea";
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
