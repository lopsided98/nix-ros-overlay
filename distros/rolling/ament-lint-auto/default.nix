
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test }:
buildRosPackage {
  pname = "ros-rolling-ament-lint-auto";
  version = "0.21.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_lint_auto/0.21.3-1.tar.gz";
    name = "0.21.3-1.tar.gz";
    sha256 = "285d33123a4a4e62613ed7cc0ef8194438699f2da44aa5585359299b3ec34bcc";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-test ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ];

  meta = {
    description = "The auto-magic functions for ease to use of the ament linters in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
