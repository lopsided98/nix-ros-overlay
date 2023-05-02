
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-package, cmake, python3Packages }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-core";
  version = "1.3.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/humble/ament_cmake_core/1.3.4-2.tar.gz";
    name = "1.3.4-2.tar.gz";
    sha256 = "103b98f3b56dc5312d3958924cc02c998ae7fe9e087e7228a45f32268c230974";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-package cmake python3Packages.catkin-pkg ];
  nativeBuildInputs = [ ament-package cmake python3Packages.catkin-pkg ];

  meta = {
    description = ''The core of the ament buildsystem in CMake.

    Several subcomponents provide specific funtionalities:
    * environment: provide prefix-level setup files
    * environment_hooks: provide package-level setup files and environment hooks
    * index: store information in an index and retrieve them without crawling
    * package_templates: templates from the ament_package Python package
    * symlink_install: use symlinks for CMake install commands'';
    license = with lib.licenses; [ asl20 ];
  };
}
