
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, openjdk }:
buildRosPackage {
  pname = "ros-galactic-pepper-meshes";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/pepper_meshes2-release/archive/release/galactic/pepper_meshes/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "df76a47d531b2487ff290d67f5fb7057fa4b3434b4e8e43cd24aac587785fca3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake openjdk ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Meshes for the Pepper robot, for ROS2'';
    license = with lib.licenses; [ "CC-BY-NC-ND-4.0" ];
  };
}
