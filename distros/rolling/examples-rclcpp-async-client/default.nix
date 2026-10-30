
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-async-client";
  version = "0.22.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_async_client/0.22.1-1.tar.gz";
    name = "0.22.1-1.tar.gz";
    sha256 = "42c370f0f5c6b92f09e12a7481d9ef4477875dbe103920f27a70d8c8abc02dc2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ example-interfaces rclcpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Example of an async service client";
    license = with lib.licenses; [ asl20 ];
  };
}
