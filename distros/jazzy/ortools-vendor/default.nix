
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-cmake-xmllint, ament-lint-auto, git }:
buildRosPackage {
  pname = "ros-jazzy-ortools-vendor";
  version = "9.9.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ortools_vendor-release/archive/release/jazzy/ortools_vendor/9.9.1-4.tar.gz";
    name = "9.9.1-4.tar.gz";
    sha256 = "7f0fb2ca657895e36cc0996b393d521fb17ade3bb6b16c99e3a465b606b7e115";
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
