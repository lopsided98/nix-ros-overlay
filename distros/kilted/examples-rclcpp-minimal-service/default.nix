
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp }:
buildRosPackage {
  pname = "ros-kilted-examples-rclcpp-minimal-service";
  version = "0.20.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/kilted/examples_rclcpp_minimal_service/0.20.6-2.tar.gz";
    name = "0.20.6-2.tar.gz";
    sha256 = "6272d7f4b1a4337e3f91cfa407508416a2fd4b4bccd3ac8bd71a6ef8ff2fdb90";
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
