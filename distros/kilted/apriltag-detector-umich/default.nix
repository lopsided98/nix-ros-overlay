
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, apriltag, apriltag-detector, apriltag-msgs, opencv, pluginlib, rclcpp, ros-environment, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-apriltag-detector-umich";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_detector-release/archive/release/kilted/apriltag_detector_umich/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "d984dfe2b8fe3a1012782cd9f7d3388ab54032ab9e51975094acd8ee7cab802f";
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
