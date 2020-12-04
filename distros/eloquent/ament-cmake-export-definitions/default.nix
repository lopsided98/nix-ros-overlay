
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-eloquent-ament-cmake-export-definitions";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/eloquent/ament_cmake_export_definitions/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "83fbeab5f34512748d9ebaf480f7dc666b530e2ada2b3bf145991771cbc8111b";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to export definitions to downstream packages in the ament buildsystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
