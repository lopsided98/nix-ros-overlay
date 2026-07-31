
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nebula-continental, nebula-hesai, nebula-robosense, nebula-velodyne, ros-testing }:
buildRosPackage {
  pname = "ros-jazzy-nebula";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "f2d0d831ddbb75964d9fff86e8fccc9ed75a16b20c15ad9b73cff5160cc33dcb";
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
