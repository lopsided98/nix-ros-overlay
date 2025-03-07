
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-lint-auto, ament-lint-common, apriltag-detector, apriltag-draw, apriltag-msgs, rclcpp, ros-environment, rosbag2-transport }:
buildRosPackage {
  pname = "ros-jazzy-apriltag-tools";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_detector-release/archive/release/jazzy/apriltag_tools/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "e5b10bdd4ec8532ebc5dddb14ae4a1337115bf2f55de00dba59a3f3611e90e42";
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
