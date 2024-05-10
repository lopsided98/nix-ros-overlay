
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-iron-ament-cmake-libraries";
  version = "2.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/iron/ament_cmake_libraries/2.0.5-1.tar.gz";
    name = "2.0.5-1.tar.gz";
    sha256 = "8c0219145985e888f414634f9158e7971f5267108d81f43878897d94fef71b8b";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The functionality to deduplicate libraries in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
