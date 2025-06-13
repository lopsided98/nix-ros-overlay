
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-lint-auto, ament-lint-common, apriltag-msgs, cv-bridge, image-transport, pluginlib, rclcpp, rclcpp-components, ros-environment, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-apriltag-detector";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_detector-release/archive/release/jazzy/apriltag_detector/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "2bc478c87f38e27886df245320bc059fd2ea73a381a3ca03752462842d51bf07";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ apriltag-msgs cv-bridge image-transport pluginlib rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ros-environment ];

  meta = {
    description = "ROS2 package for apriltag detection";
    license = with lib.licenses; [ asl20 ];
  };
}
