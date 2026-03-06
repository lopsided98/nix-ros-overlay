
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-export-link-flags";
  version = "2.5.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/jazzy/ament_cmake_export_link_flags/2.5.6-2.tar.gz";
    name = "2.5.6-2.tar.gz";
    sha256 = "3b8d028c5c6f90f82486937ff87b58249b3d7b745e4c0f2adb59afb2c2890b90";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The ability to export link flags to downstream packages in the ament buildsystem.";
    license = with lib.licenses; [ asl20 ];
  };
}
