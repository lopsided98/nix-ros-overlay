
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-nao-meshes";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/nao_meshes-release/archive/release/humble/nao_meshes/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "eadf5f7cd2cca494d5bc87ac3dddb9a1887df881f3a7b01fd9b66d4ceec37290";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 Meshes for the NAO robot";
    license = with lib.licenses; [ cc-by-nc-nd-40 ];
  };
}
