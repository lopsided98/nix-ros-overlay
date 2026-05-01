
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, apriltag, apriltag-detector, apriltag-msgs, opencv, pluginlib, rclcpp, ros-environment, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-apriltag-detector-umich";
  version = "3.0.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_detector-release/archive/release/lyrical/apriltag_detector_umich/3.0.4-3.tar.gz";
    name = "3.0.4-3.tar.gz";
    sha256 = "350d4537b9dc0ebc62d2c5ebfc03c2a0ae5a6c6334015d9b8bb78fe4f5f08b5a";
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
