
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-lyrical-ament-cmake-export-definitions";
  version = "2.8.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/lyrical/ament_cmake_export_definitions/2.8.7-3.tar.gz";
    name = "2.8.7-3.tar.gz";
    sha256 = "ef032839a166ea21d60bf0a9e9ee03cced63f9aec250d4f1a3bceee44b6dbe6a";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The ability to export definitions to downstream packages in the ament buildsystem.";
    license = with lib.licenses; [ asl20 ];
  };
}
