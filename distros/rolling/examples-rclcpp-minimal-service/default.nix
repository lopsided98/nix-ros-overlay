
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-minimal-service";
  version = "0.16.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_minimal_service/0.16.2-1.tar.gz";
    name = "0.16.2-1.tar.gz";
    sha256 = "a41b566d2e61236a034363df99ec2e4b6498850560527a02093a5b8d8a3ade37";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ example-interfaces rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A minimal service server which adds two numbers'';
    license = with lib.licenses; [ asl20 ];
  };
}
