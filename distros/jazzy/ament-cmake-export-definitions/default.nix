
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-export-definitions";
  version = "2.5.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/jazzy/ament_cmake_export_definitions/2.5.5-1.tar.gz";
    name = "2.5.5-1.tar.gz";
    sha256 = "d8baf4901175ff2bb75798895b540489e79eb69781ae1786e5aac010df7de890";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The ability to export definitions to downstream packages in the ament buildsystem.";
    license = with lib.licenses; [ asl20 ];
  };
}
