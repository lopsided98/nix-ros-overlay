
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-xmllint, launch-testing }:
buildRosPackage {
  pname = "ros-humble-integration-launch-testing";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/franka_ros2-release/archive/release/humble/integration_launch_testing/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "3031885dcab19d6f61b91a0221b1af07a19e3461f9739ae778433feeea9d78cc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-xmllint launch-testing ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Functional integration tests for franka controllers";
    license = with lib.licenses; [ asl20 ];
  };
}
