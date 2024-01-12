
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, angles, hardware-interface, picknik-ament-copyright, rclcpp, ros2-control-test-assets, sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-topic-based-ros2-control";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/topic_based_ros2_control-release/archive/release/iron/topic_based_ros2_control/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "957ef4c6fbb5d18a103619c0ed28962539a75e98fb01982f04847a8bde57b041";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common picknik-ament-copyright ros2-control-test-assets ];
  propagatedBuildInputs = [ angles hardware-interface rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ros2 control hardware interface for topic_based sim'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
