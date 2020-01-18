
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test }:
buildRosPackage {
  pname = "ros-eloquent-ament-lint-auto";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/eloquent/ament_lint_auto/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "99095a80af5d9c9f5071bf6b5517d42e3a77a5bfa6c973d9fef5c882982ba7df";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-test ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ];

  meta = {
    description = ''The auto-magic functions for ease to use of the ament linters in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
