
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-minimal-publisher";
  version = "0.21.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_minimal_publisher/0.21.5-2.tar.gz";
    name = "0.21.5-2.tar.gz";
    sha256 = "08b1851505a7a0aaa16d8a3a9b59e0a8690bbb2b9d3b1ce68cc4ab958ddbc9f8";
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
