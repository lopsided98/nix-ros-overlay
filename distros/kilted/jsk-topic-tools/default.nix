
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-pytest, ament-cmake-python, boost, geometry-msgs, jsk-ros1-ros2-compat, launch-ros, launch-testing, launch-testing-ament-cmake, lifecycle-msgs, python3Packages, rclcpp, rclcpp-components, rclcpp-lifecycle, rclpy, ros-environment, sensor-msgs, std-msgs, tf2-eigen, tf2-msgs }:
buildRosPackage {
  pname = "ros-kilted-jsk-topic-tools";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/kilted/jsk_topic_tools/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "f15a9ff37a6b7421586ccb55baddf1b695cf8be6493eeef6deed4b4d2dc5fdd8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-python boost ros-environment ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-pytest launch-ros launch-testing launch-testing-ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs jsk-ros1-ros2-compat lifecycle-msgs python3Packages.numpy python3Packages.opencv4 python3Packages.scipy rclcpp rclcpp-components rclcpp-lifecycle rclpy sensor-msgs std-msgs tf2-eigen tf2-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ros-environment ];

  meta = {
    description = "jsk_topic_tools";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
