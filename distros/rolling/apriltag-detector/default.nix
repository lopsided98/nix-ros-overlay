
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, apriltag, apriltag-msgs, cv-bridge, image-transport, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-apriltag-detector";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_detector-release/archive/release/rolling/apriltag_detector/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "ac6dddbb8b51542dd67a1557052028913273d74a5672c1e1084d631c70ab91ed";
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
