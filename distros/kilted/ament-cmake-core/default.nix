
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-package, cmake, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-ament-cmake-core";
  version = "2.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/kilted/ament_cmake_core/2.7.4-1.tar.gz";
    name = "2.7.4-1.tar.gz";
    sha256 = "87200a764e6a195d0886552e46db3102275e0e6dae396e82a18c50660139ed59";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-package cmake python3Packages.catkin-pkg ];
  nativeBuildInputs = [ ament-package cmake python3Packages.catkin-pkg ];

  meta = {
    description = "The core of the ament buildsystem in CMake.

    Several subcomponents provide specific funtionalities:
    * environment: provide prefix-level setup files
    * environment_hooks: provide package-level setup files and environment hooks
    * index: store information in an index and retrieve them without crawling
    * package_templates: templates from the ament_package Python package
    * symlink_install: use symlinks for CMake install commands";
    license = with lib.licenses; [ asl20 ];
  };
}
