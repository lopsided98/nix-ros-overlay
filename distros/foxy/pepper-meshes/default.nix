
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, openjdk }:
buildRosPackage {
  pname = "ros-foxy-pepper-meshes";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/pepper_meshes2-release/archive/release/foxy/pepper_meshes/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "0d9d785bf61c7ca313490ac86596fdac73e703a1f9d6e2b61de63ffea6ae428d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake openjdk ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Meshes for the Pepper robot, for ROS2'';
    license = with lib.licenses; [ "CC-BY-NC-ND-4.0" ];
  };
}
