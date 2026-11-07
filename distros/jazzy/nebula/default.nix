
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nebula-continental, nebula-hesai, nebula-robosense, nebula-velodyne, ros-testing }:
buildRosPackage {
  pname = "ros-jazzy-nebula";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "5a64c17fa538ea0193ea35709376638fec3c7fb9a2be68b9bc3afca637e4048b";
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
