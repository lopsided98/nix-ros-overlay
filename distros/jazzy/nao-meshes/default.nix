
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-nao-meshes";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/nao_meshes-release/archive/release/jazzy/nao_meshes/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "2312811ef139a1e60e63da35bd0cf5e4137ee4c30d132a9d00412397b725d4b9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 Meshes for the NAO robot";
    license = with lib.licenses; [ "CC-BY-NC-ND-4.0" ];
  };
}
