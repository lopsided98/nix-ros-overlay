
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-iron-ament-cmake-export-link-flags";
  version = "2.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/iron/ament_cmake_export_link_flags/2.0.5-1.tar.gz";
    name = "2.0.5-1.tar.gz";
    sha256 = "f9c9a1bfc1f812056fc9f116df05318d02c277454e7fc36e431c6327d684dc74";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The ability to export link flags to downstream packages in the ament buildsystem.";
    license = with lib.licenses; [ asl20 ];
  };
}
