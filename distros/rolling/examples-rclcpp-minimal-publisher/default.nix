
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-minimal-publisher";
  version = "0.21.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_minimal_publisher/0.21.2-1.tar.gz";
    name = "0.21.2-1.tar.gz";
    sha256 = "541cc95ede7b4ed2b1dd3369db84c2d1120d93026a88deefdf68361614b16682";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Examples of minimal publisher nodes";
    license = with lib.licenses; [ asl20 ];
  };
}
