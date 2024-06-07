
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-lint-auto, apriltag, apriltag-msgs, cv-bridge, eigen, image-transport, rclcpp, rclcpp-components, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-apriltag-ros";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_ros-release/archive/release/rolling/apriltag_ros/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "f4a50cb34cbe167ae550046392804e9a4d680d6ed5e785630f1018600855c4df";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-lint-auto ];
  propagatedBuildInputs = [ apriltag apriltag-msgs cv-bridge image-transport rclcpp rclcpp-components sensor-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "AprilTag detection node";
    license = with lib.licenses; [ mit ];
  };
}
