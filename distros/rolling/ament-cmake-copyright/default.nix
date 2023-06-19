
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-copyright }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-copyright";
  version = "0.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_copyright/0.15.1-1.tar.gz";
    name = "0.15.1-1.tar.gz";
    sha256 = "b8c43acfaf6ef4d77118cfde8a9a06d1c814706a9c306f9a525e70f90c41c859";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-copyright ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-copyright ];

  meta = {
    description = ''The CMake API for ament_copyright to check every source file contains copyright reference.'';
    license = with lib.licenses; [ asl20 ];
  };
}
