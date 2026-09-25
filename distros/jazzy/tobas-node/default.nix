
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp-components, tobas-constants, tobas-dparam-msgs, tobas-msgs, tobas-ros2-tools, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-node";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_node/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "77575446499b0f8984c2582321793df3b52e925bb41829fe2e8a95d8d04cbd1b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rclcpp-components tobas-constants tobas-dparam-msgs tobas-msgs tobas-ros2-tools tobas-std-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Base ROS 2 node class with common Tobas configuration and runtime behavior.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
