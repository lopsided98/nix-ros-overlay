
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-lint-auto, apriltag, apriltag-msgs, cv-bridge, eigen, image-transport, rclcpp, rclcpp-components, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-apriltag-ros";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_ros-release/archive/release/humble/apriltag_ros/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "d7370dfa343f39b37b681abaef92c243656c98b7e18e7a2347a2e960177aa8e9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-lint-auto ];
  propagatedBuildInputs = [ apriltag apriltag-msgs cv-bridge image-transport rclcpp rclcpp-components sensor-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''AprilTag detection node'';
    license = with lib.licenses; [ mit ];
  };
}
