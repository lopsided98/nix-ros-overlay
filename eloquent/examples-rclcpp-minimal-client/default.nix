
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, example-interfaces, rclcpp }:
buildRosPackage {
  pname = "ros-eloquent-examples-rclcpp-minimal-client";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/eloquent/examples_rclcpp_minimal_client/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "09b8838bd941d2d8a0861e0072602b555493fd335211c8dba5ed74eac2e61505";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ example-interfaces rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Examples of minimal service clients'';
    license = with lib.licenses; [ asl20 ];
  };
}
