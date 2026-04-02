
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-minimal-service";
  version = "0.21.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_minimal_service/0.21.5-1.tar.gz";
    name = "0.21.5-1.tar.gz";
    sha256 = "ea5bbd7e9b5dcd17b137c1884cf09b479707f315b1dad9f63ef902ab95bd5e16";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ example-interfaces rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A minimal service server which adds two numbers";
    license = with lib.licenses; [ asl20 ];
  };
}
