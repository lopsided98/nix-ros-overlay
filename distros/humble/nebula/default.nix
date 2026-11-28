
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nebula-continental, nebula-hesai, nebula-robosense, nebula-velodyne, ros-testing }:
buildRosPackage {
  pname = "ros-humble-nebula";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "b24223dcb9082e8201649bd68e9af588ac12d428d71b5622fded5c7e49e25467";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-testing ];
  propagatedBuildInputs = [ nebula-continental nebula-hesai nebula-robosense nebula-velodyne ];
  nativeBuildInputs = [ ament-cmake ros-testing ];

  meta = {
    description = "Nebula: multi-vendor LiDAR and radar driver";
    license = with lib.licenses; [ asl20 ];
  };
}
