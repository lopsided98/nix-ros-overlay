
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclcpp, example-interfaces, ament-cmake }:
buildRosPackage {
  pname = "ros-crystal-examples-rclcpp-minimal-service";
  version = "0.6.3";

  src = fetchurl {
    url = https://github.com/ros2-gbp/examples-release/archive/release/crystal/examples_rclcpp_minimal_service/0.6.3-0.tar.gz;
    sha256 = "62f7408c2a5d1afffe56efa4bff51318fbd63bfb50d22ec863d628a2d77d1841";
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
