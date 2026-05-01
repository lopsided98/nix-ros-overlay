
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-package, cmake, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-ament-cmake-core";
  version = "2.8.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/lyrical/ament_cmake_core/2.8.7-3.tar.gz";
    name = "2.8.7-3.tar.gz";
    sha256 = "56e401650f7006d2318cd31f07edbb35b0ee7f9a4ddd0445df1cc799d62e52ba";
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
