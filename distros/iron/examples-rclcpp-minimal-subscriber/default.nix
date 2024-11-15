
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-iron-examples-rclcpp-minimal-subscriber";
  version = "0.18.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/iron/examples_rclcpp_minimal_subscriber/0.18.2-1.tar.gz";
    name = "0.18.2-1.tar.gz";
    sha256 = "3289f01cd3183a028ad4e81b5972aec1a3f68ac4b2248c3a52d0455fc2f4e875";
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
