
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-package, python3Packages, cmake }:
buildRosPackage {
  pname = "ros-crystal-ament-cmake-core";
  version = "0.6.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/crystal/ament_cmake_core/0.6.1-0.tar.gz";
    name = "0.6.1-0.tar.gz";
    sha256 = "fdf241071c3f7151841f0ba54be21351e60c17571722644bac8df642587354ca";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-package python3Packages.catkin-pkg cmake ];
  nativeBuildInputs = [ ament-package python3Packages.catkin-pkg cmake ];

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
