
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-pytest, ament-cmake-python, boost, geometry-msgs, jsk-ros1-ros2-compat, launch-ros, launch-testing, launch-testing-ament-cmake, lifecycle-msgs, python3Packages, rclcpp, rclcpp-components, rclcpp-lifecycle, rclpy, ros-environment, sensor-msgs, std-msgs, tf2-eigen, tf2-msgs }:
buildRosPackage {
  pname = "ros-rolling-jsk-topic-tools";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/jsk_common-release/archive/release/rolling/jsk_topic_tools/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "2b8f09566a0224004416535bf55d06250eb46ca5932f339c0abcb028c20cc2f1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-python boost ros-environment ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-pytest launch-ros launch-testing launch-testing-ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs jsk-ros1-ros2-compat lifecycle-msgs python3Packages.numpy python3Packages.opencv4 python3Packages.scipy rclcpp rclcpp-components rclcpp-lifecycle rclpy sensor-msgs std-msgs tf2-eigen tf2-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ros-environment ];

  meta = {
    description = "jsk_topic_tools";
    license = with lib.licenses; [ bsd3 ];
  };
}
