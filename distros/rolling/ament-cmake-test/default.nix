
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-python }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-test";
  version = "2.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_test/2.7.1-1.tar.gz";
    name = "2.7.1-1.tar.gz";
    sha256 = "95321da9b3ea3cdb45477556377e3465018f3cfa10576b10c25dcb076f10e558";
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
