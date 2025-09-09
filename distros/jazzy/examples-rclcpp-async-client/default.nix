
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-examples-rclcpp-async-client";
  version = "0.19.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/jazzy/examples_rclcpp_async_client/0.19.6-1.tar.gz";
    name = "0.19.6-1.tar.gz";
    sha256 = "4945051a5f320afb00d59829c50289ffe32b8e653c7278839e13a7e2d046f5ea";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ example-interfaces rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Example of an async service client";
    license = with lib.licenses; [ asl20 ];
  };
}
