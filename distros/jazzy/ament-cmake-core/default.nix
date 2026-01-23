
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-package, cmake, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-core";
  version = "2.5.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/jazzy/ament_cmake_core/2.5.5-1.tar.gz";
    name = "2.5.5-1.tar.gz";
    sha256 = "9c779e3685635deadd6a5ab24540eaac65eb7e79ff08e6be31987a716723cf22";
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
