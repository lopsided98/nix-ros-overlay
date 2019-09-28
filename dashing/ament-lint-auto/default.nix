
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-test, ament-cmake-core }:
buildRosPackage {
  pname = "ros-dashing-ament-lint-auto";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_lint_auto/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "07c684f3eeb4c68967deb2fef53d56ee28ccc7e6bf9ed7c3364cc7698f2cffe8";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-test ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-test ament-cmake-core ];

  meta = {
    description = ''The auto-magic functions for ease to use of the ament linters in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
