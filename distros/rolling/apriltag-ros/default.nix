
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-lint-auto, apriltag, apriltag-msgs, camera-ros, clang, cv-bridge, eigen, image-proc, image-transport, image-transport-plugins, rclcpp, rclcpp-components, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-apriltag-ros";
  version = "3.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_ros-release/archive/release/rolling/apriltag_ros/3.3.0-2.tar.gz";
    name = "3.3.0-2.tar.gz";
    sha256 = "1eb58ce32fdcc9285486bd7589aa84046313242948ef76a5afd51e897ca8f206";
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
