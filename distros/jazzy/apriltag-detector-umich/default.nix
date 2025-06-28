
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, apriltag, apriltag-detector, apriltag-msgs, opencv, pluginlib, rclcpp, ros-environment, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-apriltag-detector-umich";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_detector-release/archive/release/jazzy/apriltag_detector_umich/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "69d2c1f0abd2a7b9c4955a51807ddf7702ed609e50b267dfbe61aecf286b4956";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ros-environment ];
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ apriltag apriltag-detector apriltag-msgs opencv opencv.cxxdev pluginlib rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ros-environment ];

  meta = {
    description = "ROS package for apriltag detection with the UMich detector";
    license = with lib.licenses; [ asl20 ];
  };
}
