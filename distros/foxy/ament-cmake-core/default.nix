
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-package, cmake, python3Packages }:
buildRosPackage {
  pname = "ros-foxy-ament-cmake-core";
  version = "0.9.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/foxy/ament_cmake_core/0.9.11-1.tar.gz";
    name = "0.9.11-1.tar.gz";
    sha256 = "1c72f1240fb41ca6b6a801d2c8408b6b5aa20f529375d7c5acee8d424fa68850";
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
