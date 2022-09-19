
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp }:
buildRosPackage {
  pname = "ros-humble-examples-rclcpp-async-client";
  version = "0.15.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/humble/examples_rclcpp_async_client/0.15.0-2.tar.gz";
    name = "0.15.0-2.tar.gz";
    sha256 = "3fda1f372ef9d40ebf84aef1c7ea6bd337e9851aed76408ede7d2d5f8dedc508";
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
