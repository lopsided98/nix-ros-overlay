
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-minimal-service";
  version = "0.22.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_minimal_service/0.22.1-1.tar.gz";
    name = "0.22.1-1.tar.gz";
    sha256 = "3d2e5c932e3007bbaa139ab879d32f00adc438991693382568930586a06d6227";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ example-interfaces rclcpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "A minimal service server which adds two numbers";
    license = with lib.licenses; [ asl20 ];
  };
}
