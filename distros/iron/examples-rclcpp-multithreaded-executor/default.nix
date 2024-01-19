
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-iron-examples-rclcpp-multithreaded-executor";
  version = "0.18.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/iron/examples_rclcpp_multithreaded_executor/0.18.0-2.tar.gz";
    name = "0.18.0-2.tar.gz";
    sha256 = "b16ec1ee7996bb89849be50c1ddac0af0d563c8c5abef2b94a7c0f19b5183df1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package containing example of how to implement a multithreaded executor'';
    license = with lib.licenses; [ asl20 ];
  };
}
