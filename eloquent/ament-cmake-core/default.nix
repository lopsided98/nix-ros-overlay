
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-package, python3Packages, cmake }:
buildRosPackage {
  pname = "ros-eloquent-ament-cmake-core";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/eloquent/ament_cmake_core/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "af4b9911f8be9e5a6334a9354104604d952f41d19ffa41723219ad30721f10de";
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
