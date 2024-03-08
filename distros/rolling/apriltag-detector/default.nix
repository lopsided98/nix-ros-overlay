
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-ros, ament-lint-auto, ament-lint-common, apriltag, apriltag-msgs, cv-bridge, image-transport, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-apriltag-detector";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_detector-release/archive/release/rolling/apriltag_detector/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "50ee03f9abab3d0d88fe8ed63b48059c032b98c5073f751e72c2d316c3f2cbde";
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
