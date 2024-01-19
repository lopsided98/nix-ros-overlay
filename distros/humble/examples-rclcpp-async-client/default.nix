
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp }:
buildRosPackage {
  pname = "ros-humble-examples-rclcpp-async-client";
  version = "0.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/humble/examples_rclcpp_async_client/0.15.1-1.tar.gz";
    name = "0.15.1-1.tar.gz";
    sha256 = "96e8f19c8a8b92bfaa42a60a1664cf7a9c8b14fc004a6c66824051a73955c162";
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
