
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, hardware-interface, picknik-ament-copyright, rclcpp, ros2-control-test-assets, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-topic-based-ros2-control";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/topic_based_ros2_control-release/archive/release/humble/topic_based_ros2_control/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "3f19f78526ac82065e515e9449dd4048b3bd8c82ff0b6718a7335d44bfbaf651";
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
