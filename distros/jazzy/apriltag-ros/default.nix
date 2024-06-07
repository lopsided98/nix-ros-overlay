
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-lint-auto, apriltag, apriltag-msgs, cv-bridge, eigen, image-transport, rclcpp, rclcpp-components, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-apriltag-ros";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_ros-release/archive/release/jazzy/apriltag_ros/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "3bd0108c9c9c5fb3c2facea6cd4551e4189c07638c5b84b4a591732939f39a43";
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
