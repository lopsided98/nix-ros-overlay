
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-examples-rclcpp-minimal-service";
  version = "0.19.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/jazzy/examples_rclcpp_minimal_service/0.19.4-1.tar.gz";
    name = "0.19.4-1.tar.gz";
    sha256 = "7d26b12e634abfe9eead22631980bac0d87a87ab97876aa78888fde588698806";
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
