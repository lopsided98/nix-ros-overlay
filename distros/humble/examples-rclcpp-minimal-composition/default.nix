
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-humble-examples-rclcpp-minimal-composition";
  version = "0.15.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/humble/examples_rclcpp_minimal_composition/0.15.4-1.tar.gz";
    name = "0.15.4-1.tar.gz";
    sha256 = "09b485b0b2bd00443cda109f4b3cc7c457fe25e476c798771b3f8d745ca5fac3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Minimalist examples of composing nodes in the same
  process";
    license = with lib.licenses; [ asl20 ];
  };
}
