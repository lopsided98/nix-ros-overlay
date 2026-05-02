
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-python }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-test";
  version = "2.8.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_test/2.8.7-2.tar.gz";
    name = "2.8.7-2.tar.gz";
    sha256 = "ad37623c895f2aa14dff67956d5d369717fd53a72775ea534fcdb044fbe82760";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ];
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-python ];

  meta = {
    description = "The ability to add tests in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
