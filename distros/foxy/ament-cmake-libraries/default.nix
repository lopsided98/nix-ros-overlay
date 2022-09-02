
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-foxy-ament-cmake-libraries";
  version = "0.9.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/foxy/ament_cmake_libraries/0.9.11-1.tar.gz";
    name = "0.9.11-1.tar.gz";
    sha256 = "f2686670476d658677a27714888a25e19066f4e7dd8e0a75829f1259ec00dd45";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The functionality to deduplicate libraries in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
