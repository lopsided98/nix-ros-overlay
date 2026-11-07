
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-minimal-composition";
  version = "0.22.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_minimal_composition/0.22.1-1.tar.gz";
    name = "0.22.1-1.tar.gz";
    sha256 = "e0835651a604c29a877bc3ebbcdbefb7dc6d06dd3ee2d620656d879806f2473c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Minimalist examples of composing nodes in the same
  process";
    license = with lib.licenses; [ asl20 ];
  };
}
