
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, hardware-interface, pal-statistics-msgs, rclcpp, ros2-control-cmake, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-kilted-cm-topic-hardware-component";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/topic_based_hardware-release/archive/release/kilted/cm_topic_hardware_component/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "c5f2a72476903e40dd0e7844d46535110cc92a48d9fffe5e948749f5d2329ac8";
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
