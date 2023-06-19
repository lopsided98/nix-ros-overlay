
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, hardware-interface, picknik-ament-copyright, rclcpp, ros2-control-test-assets, sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-topic-based-ros2-control";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/topic_based_ros2_control-release/archive/release/iron/topic_based_ros2_control/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "2ebf06892274ec280ec5e4e4bf751907b376774c16b87c943f47c0cccbbbe983";
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
