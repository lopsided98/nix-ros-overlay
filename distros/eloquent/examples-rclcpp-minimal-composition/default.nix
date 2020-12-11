
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-examples-rclcpp-minimal-composition";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/eloquent/examples_rclcpp_minimal_composition/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "435b59bf2559e1d598ecd2d662c8d55a3214ede93014adeea11c0a159c36a9fd";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Minimalist examples of composing nodes in the same
  process'';
    license = with lib.licenses; [ asl20 ];
  };
}
