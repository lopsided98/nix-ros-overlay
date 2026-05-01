
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-lint-auto, ament-lint-common, apriltag-msgs, cv-bridge, image-transport, rclcpp, rclcpp-components, ros-environment, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-apriltag-draw";
  version = "3.0.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_detector-release/archive/release/lyrical/apriltag_draw/3.0.4-3.tar.gz";
    name = "3.0.4-3.tar.gz";
    sha256 = "978822e9cbc6fa48f22a3dde8d79cc40aae556ab3ad639947aae473ae382dbef";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ apriltag-msgs cv-bridge image-transport rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ros-environment ];

  meta = {
    description = "ROS package for drawing apriltags on image";
    license = with lib.licenses; [ asl20 ];
  };
}
