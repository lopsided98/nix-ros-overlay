
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, apriltag, apriltag-detector, apriltag-msgs, opencv, pluginlib, rclcpp, ros-environment, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-apriltag-detector-umich";
  version = "3.0.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_detector-release/archive/release/rolling/apriltag_detector_umich/3.0.4-2.tar.gz";
    name = "3.0.4-2.tar.gz";
    sha256 = "d78939f7d0ab5aaae696165281a0f8a894af8ea17ef7d489d5410db38a7defe5";
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
