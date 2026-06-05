
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nebula-continental, nebula-hesai, nebula-robosense, nebula-velodyne }:
buildRosPackage {
  pname = "ros-humble-nebula";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "1f2d3d2d9148ca2074ce20c78d54895106d5c347c8d42f0ee30b6f2f7a93c892";
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
