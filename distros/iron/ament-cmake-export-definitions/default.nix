
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-iron-ament-cmake-export-definitions";
  version = "2.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/iron/ament_cmake_export_definitions/2.0.7-1.tar.gz";
    name = "2.0.7-1.tar.gz";
    sha256 = "ac9c364af6027295e9302cf977e31fe0023f34f9df6d4e22d4d7e8992bc892ed";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The ability to export definitions to downstream packages in the ament buildsystem.";
    license = with lib.licenses; [ asl20 ];
  };
}
