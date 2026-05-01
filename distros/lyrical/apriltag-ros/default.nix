
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-lint-auto, apriltag, apriltag-msgs, camera-ros, clang, cv-bridge, eigen, image-proc, image-transport, image-transport-plugins, rclcpp, rclcpp-components, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-apriltag-ros";
  version = "3.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_ros-release/archive/release/lyrical/apriltag_ros/3.3.0-3.tar.gz";
    name = "3.3.0-3.tar.gz";
    sha256 = "e06856cd97f56c9fc801388a0a249e6f639a41eb4df562ed7f92da9191146f19";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-lint-auto clang ];
  propagatedBuildInputs = [ apriltag apriltag-msgs camera-ros cv-bridge image-proc image-transport image-transport-plugins rclcpp rclcpp-components sensor-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "AprilTag detection node";
    license = with lib.licenses; [ mit ];
  };
}
