
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, hardware-interface, pal-statistics-msgs, rclcpp, ros2-control-cmake, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-lyrical-cm-topic-hardware-component";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/topic_based_hardware-release/archive/release/lyrical/cm_topic_hardware_component/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "749abc2a960c6353bfb3cb108cdc29c0bd6ebf5139448029f14e4bfd550fceb3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock hardware-interface ros2-control-test-assets ];
  propagatedBuildInputs = [ hardware-interface pal-statistics-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ros2_control hardware component using pal_statistics messages from controller_manager introspection";
    license = with lib.licenses; [ asl20 ];
  };
}
