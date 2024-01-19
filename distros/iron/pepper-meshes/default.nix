
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-iron-pepper-meshes";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/pepper_meshes2-release/archive/release/iron/pepper_meshes/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "e8ea0b03fdee91e98072d39add521c7c61a8d7d619bc24dc656ee7b4efcf26ab";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Meshes for the Pepper robot, for ROS2'';
    license = with lib.licenses; [ "CC-BY-NC-ND-4.0" ];
  };
}
