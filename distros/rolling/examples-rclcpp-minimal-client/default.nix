
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-minimal-client";
  version = "0.20.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_minimal_client/0.20.2-1.tar.gz";
    name = "0.20.2-1.tar.gz";
    sha256 = "c58a7f4da34c2cdff8a2635ebda0233709d6e5c167df9148b9d582a90fe742d7";
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
