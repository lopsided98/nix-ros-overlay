
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-kilted-nao-meshes";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/nao_meshes-release/archive/release/kilted/nao_meshes/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "caebee25a3352a725277fb673f498d2d2993493c3f732c4f5347c0c6f8c935b7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 Meshes for the NAO robot";
    license = with lib.licenses; [ cc-by-nc-nd-40 ];
  };
}
