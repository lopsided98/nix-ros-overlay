
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test }:
buildRosPackage {
  pname = "ros-jazzy-ament-lint-auto";
  version = "0.17.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_lint_auto/0.17.2-1.tar.gz";
    name = "0.17.2-1.tar.gz";
    sha256 = "3779a8072c309473ac80f0fa4187b21d9e5e554f30a75bc39a4579e28cf66fa5";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-test ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ];

  meta = {
    description = "The auto-magic functions for ease to use of the ament linters in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
