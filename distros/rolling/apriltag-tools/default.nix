
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-lint-auto, ament-lint-common, apriltag-detector, apriltag-draw, apriltag-msgs, rclcpp, ros-environment, rosbag2-transport }:
buildRosPackage {
  pname = "ros-rolling-apriltag-tools";
  version = "3.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_detector-release/archive/release/rolling/apriltag_tools/3.0.1-2.tar.gz";
    name = "3.0.1-2.tar.gz";
    sha256 = "a190163081e6ad44d9df25eb4b74a6ff9b782f38f561e0aa656aa085984be066";
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
