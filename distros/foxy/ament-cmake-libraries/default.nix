
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-foxy-ament-cmake-libraries";
  version = "0.9.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/foxy/ament_cmake_libraries/0.9.8-1.tar.gz";
    name = "0.9.8-1.tar.gz";
    sha256 = "1777ca70314316d932f1a85d01af09762a2e35c432c7a056535da670162d1650";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The functionality to deduplicate libraries in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
