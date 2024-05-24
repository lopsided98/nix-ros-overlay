
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, angles, hardware-interface, picknik-ament-copyright, rclcpp, ros2-control-test-assets, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-topic-based-ros2-control";
  version = "0.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/topic_based_ros2_control-release/archive/release/jazzy/topic_based_ros2_control/0.2.0-3.tar.gz";
    name = "0.2.0-3.tar.gz";
    sha256 = "23917922f7a260dc75dc22fc2c442b4749b6e3f018f02420bd1a5bbc24dec290";
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
