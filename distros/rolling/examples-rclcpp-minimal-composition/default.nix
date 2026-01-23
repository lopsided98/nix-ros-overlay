
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-minimal-composition";
  version = "0.21.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_minimal_composition/0.21.4-1.tar.gz";
    name = "0.21.4-1.tar.gz";
    sha256 = "be09dcf6dbe62e2e21f3a5cf7e5a2e690d0e73cb64d91af24dd27f2df04f86a7";
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
