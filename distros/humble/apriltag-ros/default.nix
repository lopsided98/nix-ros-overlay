
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-lint-auto, apriltag, apriltag-msgs, camera-ros, clang, cv-bridge, eigen, image-transport, image-transport-plugins, rclcpp, rclcpp-components, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-apriltag-ros";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_ros-release/archive/release/humble/apriltag_ros/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "57119d38723c94b76f21ac6a85cf67de13b304721486e7452645fe528b142c71";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-lint-auto clang ];
  propagatedBuildInputs = [ apriltag apriltag-msgs camera-ros cv-bridge image-transport image-transport-plugins rclcpp rclcpp-components sensor-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "AprilTag detection node";
    license = with lib.licenses; [ mit ];
  };
}
