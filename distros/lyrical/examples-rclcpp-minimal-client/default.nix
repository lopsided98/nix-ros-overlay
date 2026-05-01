
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-examples-rclcpp-minimal-client";
  version = "0.21.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/lyrical/examples_rclcpp_minimal_client/0.21.5-3.tar.gz";
    name = "0.21.5-3.tar.gz";
    sha256 = "fd13c0885d253d8ef343e9674c96f7ac7ff3f16f3ee0a3fa2dcd64173667376c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ example-interfaces rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Examples of minimal service clients";
    license = with lib.licenses; [ asl20 ];
  };
}
