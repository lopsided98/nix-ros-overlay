
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, hardware-interface, pal-statistics-msgs, rclcpp, ros2-control-cmake, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-kilted-cm-topic-hardware-component";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/topic_based_hardware-release/archive/release/kilted/cm_topic_hardware_component/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "02a81c1c8bfb4b4b5b27d486fb60aaa7fbb7bba47a5ba24ffcbb9c543f6c0a5f";
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
