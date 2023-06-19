
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, hardware-interface, picknik-ament-copyright, rclcpp, ros2-control-test-assets, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-topic-based-ros2-control";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/topic_based_ros2_control-release/archive/release/rolling/topic_based_ros2_control/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "63222b251a31141b3b889b1248b712169e0d5d31f360a926c2fccb2080de389f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common picknik-ament-copyright ros2-control-test-assets ];
  propagatedBuildInputs = [ hardware-interface rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ros2 control hardware interface for topic_based sim'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
