
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp }:
buildRosPackage {
  pname = "ros-kilted-examples-rclcpp-minimal-client";
  version = "0.20.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/kilted/examples_rclcpp_minimal_client/0.20.5-1.tar.gz";
    name = "0.20.5-1.tar.gz";
    sha256 = "5629ab05ded044e1b2657a910181e5f4040229e57c791e69df7dc6e0e5de0975";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ example-interfaces rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Examples of minimal service clients";
    license = with lib.licenses; [ asl20 ];
  };
}
