
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-cmake-xmllint, ament-lint-auto, git }:
buildRosPackage {
  pname = "ros-humble-ortools-vendor";
  version = "9.9.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ortools_vendor-release/archive/release/humble/ortools_vendor/9.9.1-3.tar.gz";
    name = "9.9.1-3.tar.gz";
    sha256 = "e3980a06c2996eab240713d9d13ff3d2a8c8f35552bb924be5d203feea69da0a";
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
