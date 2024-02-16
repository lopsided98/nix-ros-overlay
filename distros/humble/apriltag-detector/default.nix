
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, apriltag, apriltag-msgs, cv-bridge, image-transport, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-apriltag-detector";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_detector-release/archive/release/humble/apriltag_detector/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "38d1d96fbfd1503f80863353af3b203be61b0ef76e173663b81e9f2d96b10325";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ];
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ apriltag apriltag-msgs cv-bridge image-transport rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros ];

  meta = {
    description = ''ROS package for apriltag detection'';
    license = with lib.licenses; [ asl20 ];
  };
}
