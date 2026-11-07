
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-pytest, ament-cmake-python, boost, geometry-msgs, jsk-ros1-ros2-compat, launch-ros, launch-testing, launch-testing-ament-cmake, lifecycle-msgs, python3Packages, rclcpp, rclcpp-components, rclcpp-lifecycle, rclpy, ros-environment, sensor-msgs, std-msgs, tf2-eigen, tf2-msgs }:
buildRosPackage {
  pname = "ros-lyrical-jsk-topic-tools";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/lyrical/jsk_topic_tools/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "a4c198d6308113ef8c5cb8da0359ff59febd5bd8ab94a440eb5f55def3e94da9";
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
