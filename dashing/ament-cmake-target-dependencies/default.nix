
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-include-directories, ament-cmake-core, ament-cmake-libraries }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-target-dependencies";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/dashing/ament_cmake_target_dependencies/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "769030676751241ad4424d576d44084726a7db662ddf0ad231bffab0c515834c";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-include-directories ament-cmake-core ament-cmake-libraries ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to add definitions, include directories and libraries of a package to a target in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
