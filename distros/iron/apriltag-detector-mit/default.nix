
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, apriltag-detector, apriltag-mit, apriltag-msgs, cv-bridge, image-transport, pluginlib, rclcpp, rclcpp-components, ros-environment, sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-apriltag-detector-mit";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_detector-release/archive/release/iron/apriltag_detector_mit/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "f54aec94ce7294018781dc8dd6ecbd4ba7c20304fbcf58167c2f1068e57f74bd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ros-environment ];
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ apriltag-detector apriltag-mit apriltag-msgs cv-bridge image-transport pluginlib rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ros-environment ];

  meta = {
    description = "ROS package for apriltag detection with MIT detector";
    license = with lib.licenses; [ asl20 ];
  };
}
