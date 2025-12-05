
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, hardware-interface, pal-statistics-msgs, rclcpp, ros2-control-cmake, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-jazzy-cm-topic-hardware-component";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/topic_based_hardware-release/archive/release/jazzy/cm_topic_hardware_component/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "a78acea7c18847e0830e5bf5510761ac300ea49c7257253cc726339c9dc800b6";
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
