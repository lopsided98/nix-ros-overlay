
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-examples-rclcpp-minimal-subscriber";
  version = "0.19.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/jazzy/examples_rclcpp_minimal_subscriber/0.19.7-1.tar.gz";
    name = "0.19.7-1.tar.gz";
    sha256 = "a9ec8dd5f0a2637c002d84e62ec49387adc42b72a0e8d525860c620fb4aa8af4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Examples of minimal subscribers";
    license = with lib.licenses; [ asl20 ];
  };
}
