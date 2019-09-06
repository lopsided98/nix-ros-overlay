
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclcpp, example-interfaces, ament-cmake }:
buildRosPackage {
  pname = "ros-crystal-examples-rclcpp-minimal-client";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/crystal/examples_rclcpp_minimal_client/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "f752e4565af0a8dab10f84d6a24c1220a30673f768b91cb82d3baab8231c563a";
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
