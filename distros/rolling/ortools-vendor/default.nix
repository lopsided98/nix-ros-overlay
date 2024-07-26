
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-cmake-xmllint, ament-lint-auto, git }:
buildRosPackage {
  pname = "ros-rolling-ortools-vendor";
  version = "9.9.0-r9";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ortools_vendor-release/archive/release/rolling/ortools_vendor/9.9.0-9.tar.gz";
    name = "9.9.0-9.tar.gz";
    sha256 = "7f34d480adea4031f19d066d95975d2f3f06589ba67c125de6691a277972a46b";
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
