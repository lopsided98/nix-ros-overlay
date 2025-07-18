
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test }:
buildRosPackage {
  pname = "ros-humble-ament-lint-auto";
  version = "0.12.13-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_lint_auto/0.12.13-1.tar.gz";
    name = "0.12.13-1.tar.gz";
    sha256 = "615af72aeab637bd1b612cda3cbb4a8346ad4d815ef3aede0807fcb4347d07d6";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-test ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ];

  meta = {
    description = "The auto-magic functions for ease to use of the ament linters in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
