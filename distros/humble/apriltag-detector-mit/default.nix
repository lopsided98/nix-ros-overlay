
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, apriltag-detector, apriltag-mit, apriltag-msgs, pluginlib, rclcpp, rclcpp-components, ros-environment, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-apriltag-detector-mit";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_detector-release/archive/release/humble/apriltag_detector_mit/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "2aa18e3447d15c58a4decf0184e448d9198e73d8f9bacb51ded530b4ce9b4af9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ros-environment ];
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ apriltag-detector apriltag-mit apriltag-msgs pluginlib rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ros-environment ];

  meta = {
    description = "ROS package for apriltag detection with MIT detector";
    license = with lib.licenses; [ asl20 ];
  };
}
