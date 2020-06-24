
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, example-interfaces, rclcpp }:
buildRosPackage {
  pname = "ros-foxy-examples-rclcpp-minimal-client";
  version = "0.9.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/foxy/examples_rclcpp_minimal_client/0.9.3-1.tar.gz";
    name = "0.9.3-1.tar.gz";
    sha256 = "20c91b64e17d403c3ac32865d873d5eb01b4bb64c144671bcb9cf04a60d871b3";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ example-interfaces rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Examples of minimal service clients'';
    license = with lib.licenses; [ asl20 ];
  };
}
