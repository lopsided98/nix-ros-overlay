
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclcpp, example-interfaces, ament-cmake }:
buildRosPackage rec {
  pname = "ros-dashing-examples-rclcpp-minimal-service";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/dashing/examples_rclcpp_minimal_service/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "d7b9ab4b27c24fcc7e4df0cf1fdc99d6ce3514efbf045c4ff3883cc6842b9768";
  };

  buildType = "ament_cmake";
  buildInputs = [ example-interfaces rclcpp ];
  propagatedBuildInputs = [ example-interfaces rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A minimal service server which adds two numbers'';
    license = with lib.licenses; [ asl20 ];
  };
}
