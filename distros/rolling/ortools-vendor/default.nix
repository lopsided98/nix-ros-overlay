
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-cmake-xmllint, ament-lint-auto, git }:
buildRosPackage {
  pname = "ros-rolling-ortools-vendor";
  version = "9.9.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ortools_vendor-release/archive/release/rolling/ortools_vendor/9.9.1-5.tar.gz";
    name = "9.9.1-5.tar.gz";
    sha256 = "d0fdbb4617484dd990729ae1dbc11f3c7680ad172623084863f922135b841d76";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package git ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package git ];

  meta = {
    description = "Wrapper around ortools, it provides a fixed CMake module and an ExternalProject build of it.";
    license = with lib.licenses; [ asl20 ];
  };
}
