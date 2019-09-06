
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-test, ament-cmake-core }:
buildRosPackage rec {
  pname = "ros-dashing-ament-lint-auto";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_lint_auto/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "76ca9ac3dc6e28843df09bdba48214271a1594046c6d508f567feb051121d58b";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-test ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-test ament-cmake-core ];

  meta = {
    description = ''The auto-magic functions for ease to use of the ament linters in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
