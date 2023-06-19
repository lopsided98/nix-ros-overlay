
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-iron-ament-cmake-export-definitions";
  version = "2.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/iron/ament_cmake_export_definitions/2.0.2-2.tar.gz";
    name = "2.0.2-2.tar.gz";
    sha256 = "ba4644adc79a1a6326a6d8fb1647274cad241e2892db9d5db119751c21da5aaf";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to export definitions to downstream packages in the ament buildsystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
