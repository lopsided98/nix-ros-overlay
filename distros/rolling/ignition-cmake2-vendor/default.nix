
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-xmllint, cmake, doxygen, git, ignition }:
buildRosPackage {
  pname = "ros-rolling-ignition-cmake2-vendor";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ignition_cmake2_vendor-release/archive/release/rolling/ignition_cmake2_vendor/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "3aaaadd0e720a2585f5a63bafb513c6cc21bec5f8f6ca5716d27b13583a12fb6";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake-test cmake doxygen git ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ ignition.cmake2 ];
  nativeBuildInputs = [ ament-cmake-test cmake doxygen git ];

  meta = {
    description = ''This package provides the Ignition CMake 2.x library.'';
    license = with lib.licenses; [ asl20 ];
  };
}
