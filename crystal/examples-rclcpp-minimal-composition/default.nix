
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, class-loader, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-crystal-examples-rclcpp-minimal-composition";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/crystal/examples_rclcpp_minimal_composition/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "e52d9d3afa270e4a1c01f3dc1197578dd66a33d328a7789b186035338b86e4ca";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ class-loader rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Minimalist examples of composing nodes in the same
  process'';
    license = with lib.licenses; [ asl20 ];
  };
}
