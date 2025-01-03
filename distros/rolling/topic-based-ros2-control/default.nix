
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, angles, hardware-interface, picknik-ament-copyright, rclcpp, ros2-control-test-assets, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-topic-based-ros2-control";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/topic_based_ros2_control-release/archive/release/rolling/topic_based_ros2_control/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "63d341f82c5f182d66c2512e4807211214e2a90e314d0c3912d48c7e2346956e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common picknik-ament-copyright ros2-control-test-assets ];
  propagatedBuildInputs = [ angles hardware-interface rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ros2 control hardware interface for topic_based sim";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
