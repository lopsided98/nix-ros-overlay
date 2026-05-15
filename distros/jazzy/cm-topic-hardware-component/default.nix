
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, hardware-interface, pal-statistics-msgs, rclcpp, ros2-control-cmake, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-jazzy-cm-topic-hardware-component";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/topic_based_hardware-release/archive/release/jazzy/cm_topic_hardware_component/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "e396205ecefda9b7c1d6933bd41eb3f621a6bf0f0e81b6fbff3a324fbb3a25d3";
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
