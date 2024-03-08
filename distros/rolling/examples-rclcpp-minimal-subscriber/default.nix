
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-minimal-subscriber";
  version = "0.19.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_minimal_subscriber/0.19.1-2.tar.gz";
    name = "0.19.1-2.tar.gz";
    sha256 = "ede51824ac34a71ae6cbdd25389d0e9e2c3f6a1a61cfe38d8777ba15abcd583f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Examples of minimal subscribers'';
    license = with lib.licenses; [ asl20 ];
  };
}
