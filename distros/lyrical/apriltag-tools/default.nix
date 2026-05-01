
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-lint-auto, ament-lint-common, apriltag-detector, apriltag-draw, apriltag-msgs, rclcpp, ros-environment, rosbag2-transport }:
buildRosPackage {
  pname = "ros-lyrical-apriltag-tools";
  version = "3.0.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_detector-release/archive/release/lyrical/apriltag_tools/3.0.4-3.tar.gz";
    name = "3.0.4-3.tar.gz";
    sha256 = "af85c7658d951e24c0da47d1978c1072aeaaabadeeba2116a2363ffed8550dab";
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
