
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-export-link-flags";
  version = "2.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/jazzy/ament_cmake_export_link_flags/2.5.0-2.tar.gz";
    name = "2.5.0-2.tar.gz";
    sha256 = "4087f7b4b4383bca7b75e15cae755d777f29e2b868ffc59800802978273c2e8e";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The ability to export link flags to downstream packages in the ament buildsystem.";
    license = with lib.licenses; [ asl20 ];
  };
}
