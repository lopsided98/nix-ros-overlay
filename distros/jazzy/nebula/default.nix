
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nebula-continental, nebula-hesai, nebula-robosense, nebula-velodyne }:
buildRosPackage {
  pname = "ros-jazzy-nebula";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "0530fb76f7522868707bae1b9771bba3d7d72da4ea4541d7b6973b26a905b3e4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ nebula-continental nebula-hesai nebula-robosense nebula-velodyne ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Nebula: multi-vendor LiDAR and radar driver";
    license = with lib.licenses; [ asl20 ];
  };
}
