
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp }:
buildRosPackage {
  pname = "ros-dashing-examples-rclcpp-minimal-service";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/dashing/examples_rclcpp_minimal_service/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "165b24423344e4025d0f4cb6056e499b997b9999ef7bfb5464767674f6fcf09d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ example-interfaces rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A minimal service server which adds two numbers'';
    license = with lib.licenses; [ asl20 ];
  };
}
