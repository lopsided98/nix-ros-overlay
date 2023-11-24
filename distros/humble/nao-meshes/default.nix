
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, openjdk }:
buildRosPackage {
  pname = "ros-humble-nao-meshes";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/nao_meshes-release/archive/release/humble/nao_meshes/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "cc148ff3d80ce2e61f6ae47112a61890f8d2943197ce53d3878faaca57a369ab";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake openjdk ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 Meshes for the NAO robot'';
    license = with lib.licenses; [ "CC-BY-NC-ND-4.0" ];
  };
}
