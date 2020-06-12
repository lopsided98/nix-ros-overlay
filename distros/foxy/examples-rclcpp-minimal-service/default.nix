
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, example-interfaces, rclcpp }:
buildRosPackage {
  pname = "ros-foxy-examples-rclcpp-minimal-service";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/foxy/examples_rclcpp_minimal_service/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "d872931e488accf9da680e31eccf64bbeb80258f7222c45c3897e911fd016b03";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ example-interfaces rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A minimal service server which adds two numbers'';
    license = with lib.licenses; [ asl20 ];
  };
}
