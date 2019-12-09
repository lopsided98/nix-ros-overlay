
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, example-interfaces, rclcpp, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-examples-rclcpp-minimal-client";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/dashing/examples_rclcpp_minimal_client/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "9b6db218f8b2203918c8a855b6e0e9fdaa828d68c46e36fbe09cf9da5cf32c49";
  };

  buildType = "ament_cmake";
  buildInputs = [ example-interfaces rclcpp ];
  propagatedBuildInputs = [ example-interfaces rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Examples of minimal service clients'';
    license = with lib.licenses; [ asl20 ];
  };
}
