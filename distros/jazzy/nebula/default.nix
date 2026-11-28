
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nebula-continental, nebula-hesai, nebula-robosense, nebula-velodyne, ros-testing }:
buildRosPackage {
  pname = "ros-jazzy-nebula";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "4b6bcb436e7c27a04b51aa2bcdd3d956c4f05531029b511c007e54a6a31715b7";
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
