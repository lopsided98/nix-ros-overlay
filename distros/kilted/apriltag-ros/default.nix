
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-lint-auto, apriltag, apriltag-msgs, cv-bridge, eigen, image-transport, rclcpp, rclcpp-components, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-apriltag-ros";
  version = "3.2.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_ros-release/archive/release/kilted/apriltag_ros/3.2.2-2.tar.gz";
    name = "3.2.2-2.tar.gz";
    sha256 = "bf9fede1a63fc6d058a4a7c8e765fb4763590d7601b5de9e629a98345322977b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-lint-auto ];
  propagatedBuildInputs = [ apriltag apriltag-msgs cv-bridge image-transport rclcpp rclcpp-components sensor-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "AprilTag detection node";
    license = with lib.licenses; [ mit ];
  };
}
