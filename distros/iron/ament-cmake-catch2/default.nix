
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test }:
buildRosPackage {
  pname = "ros-iron-ament-cmake-catch2";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_catch2-release/archive/release/iron/ament_cmake_catch2/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "c8d47d68db42165ea78722d9e9ef9660b53aeaf34d7f2593963c51333d7206a9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  propagatedBuildInputs = [ ament-cmake-test ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ];

  meta = {
    description = ''Allows integrating catch2 tests in the ament buildsystem with CMake'';
    license = with lib.licenses; [ asl20 ];
  };
}
