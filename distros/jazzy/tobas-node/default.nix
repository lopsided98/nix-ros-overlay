
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp-components, tobas-constants, tobas-dparam-msgs, tobas-msgs, tobas-ros2-tools, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-node";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_node/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "ce43b614ca578b7cb3cd253407e22485670c041020ae7d0cb82a30c65b1d46de";
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
