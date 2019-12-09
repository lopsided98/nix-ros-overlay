
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, example-interfaces, rclcpp, ament-cmake }:
buildRosPackage {
  pname = "ros-eloquent-examples-rclcpp-minimal-service";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/eloquent/examples_rclcpp_minimal_service/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "cd5e56c9c238d0ce3849f3f34ba657a1d51c014feee2446691212bcc761b3ad7";
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
