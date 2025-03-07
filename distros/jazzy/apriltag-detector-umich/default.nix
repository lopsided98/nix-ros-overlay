
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, apriltag, apriltag-detector, apriltag-msgs, opencv, pluginlib, rclcpp, ros-environment, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-apriltag-detector-umich";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_detector-release/archive/release/jazzy/apriltag_detector_umich/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "444226c5aeadfd54725f1d321a7648254acb8ad09a499bb9646ddcb1eabb9eec";
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
