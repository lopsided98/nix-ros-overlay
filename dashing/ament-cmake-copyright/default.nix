
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-test, ament-copyright, ament-cmake-core, ament-cmake-lint-cmake }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-copyright";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_cmake_copyright/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "aca5176b566fe0716bb311f4045ce8bfa21d0fb13ece1d1400ec3ca05d28f1e1";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-copyright ];
  nativeBuildInputs = [ ament-cmake-test ament-copyright ament-cmake-core ];

  meta = {
    description = ''The CMake API for ament_copyright to check every source file contains copyright reference.'';
    license = with lib.licenses; [ asl20 ];
  };
}
