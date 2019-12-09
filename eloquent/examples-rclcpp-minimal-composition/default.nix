
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, rclcpp, ament-cmake, rclcpp-components }:
buildRosPackage {
  pname = "ros-eloquent-examples-rclcpp-minimal-composition";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/eloquent/examples_rclcpp_minimal_composition/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "211cf1999e6c741b7663b8ba659e4c8bd2cebaacd595bad468436e7c6bd4a0bd";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs rclcpp rclcpp-components ];
  propagatedBuildInputs = [ std-msgs rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Minimalist examples of composing nodes in the same
  process'';
    license = with lib.licenses; [ asl20 ];
  };
}
