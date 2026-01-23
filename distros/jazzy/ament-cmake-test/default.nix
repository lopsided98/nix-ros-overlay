
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-python }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-test";
  version = "2.5.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/jazzy/ament_cmake_test/2.5.5-1.tar.gz";
    name = "2.5.5-1.tar.gz";
    sha256 = "fb3c6edf2f1585e7b4f6b103506fd07010bce9136357a05784a4acae82510ae9";
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
