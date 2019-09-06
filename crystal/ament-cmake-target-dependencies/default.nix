
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-include-directories, ament-cmake-core, ament-cmake-libraries }:
buildRosPackage {
  pname = "ros-crystal-ament-cmake-target-dependencies";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ament_cmake-release/archive/release/crystal/ament_cmake_target_dependencies/0.6.1-0.tar.gz;
    sha256 = "796b09108958c81160c6bdaaadc180d3a85b00ae65400368ede1e26bdb8a717f";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-include-directories ament-cmake-core ament-cmake-libraries ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to add definitions, include directories and libraries of a package to a target in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
