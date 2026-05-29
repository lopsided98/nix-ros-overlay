
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-lint-auto, apriltag, apriltag-msgs, camera-ros, clang, cv-bridge, eigen, image-proc, image-transport, image-transport-plugins, rclcpp, rclcpp-components, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-apriltag-ros";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_ros-release/archive/release/jazzy/apriltag_ros/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "f071fdb3871e2170da3179316830b71c3bcb419c938c5971b4c717fe4d67a4ff";
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
