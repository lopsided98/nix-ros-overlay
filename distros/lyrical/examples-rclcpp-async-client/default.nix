
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-examples-rclcpp-async-client";
  version = "0.21.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/lyrical/examples_rclcpp_async_client/0.21.6-1.tar.gz";
    name = "0.21.6-1.tar.gz";
    sha256 = "9a4867f5a2b511cac52819e5a23bb233f128cd4533836d286494288d5b74caed";
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
