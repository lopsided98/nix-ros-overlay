
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp }:
buildRosPackage {
  pname = "ros-iron-examples-rclcpp-async-client";
  version = "0.18.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/iron/examples_rclcpp_async_client/0.18.0-2.tar.gz";
    name = "0.18.0-2.tar.gz";
    sha256 = "3734debf08f9c576827a964f8f762f8bf9866aad7d8ac220fbc830ca3817415e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ example-interfaces rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Example of an async service client'';
    license = with lib.licenses; [ asl20 ];
  };
}
