
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, example-interfaces, rclcpp }:
buildRosPackage {
  pname = "ros-foxy-examples-rclcpp-minimal-client";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/foxy/examples_rclcpp_minimal_client/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "e3c604eb7c52896657951d019da87bc2e5e49395db2f47bedfa10162caaf8424";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ example-interfaces rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Examples of minimal service clients'';
    license = with lib.licenses; [ asl20 ];
  };
}
