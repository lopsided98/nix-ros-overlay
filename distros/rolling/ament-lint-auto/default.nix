
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test }:
buildRosPackage {
  pname = "ros-rolling-ament-lint-auto";
  version = "0.19.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_lint_auto/0.19.2-1.tar.gz";
    name = "0.19.2-1.tar.gz";
    sha256 = "b41d4179c9568f698be462eb3f349addedd25fa2274ac0893ffd6b0be3be2997";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-test ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ];

  meta = {
    description = "The auto-magic functions for ease to use of the ament linters in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
