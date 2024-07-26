
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-minimal-composition";
  version = "0.20.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_minimal_composition/0.20.1-1.tar.gz";
    name = "0.20.1-1.tar.gz";
    sha256 = "cc151422f35cf8114e03d24edbf7251a9bf9842ae968c8e4b8086da2f25ced26";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Minimalist examples of composing nodes in the same
  process";
    license = with lib.licenses; [ asl20 ];
  };
}
