
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, openjdk }:
buildRosPackage {
  pname = "ros-iron-nao-meshes";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/nao_meshes-release/archive/release/iron/nao_meshes/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "920fc988a0931a2fb800d724572b9d866098d4837138626e8844df2790fe886c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake openjdk ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 Meshes for the NAO robot'';
    license = with lib.licenses; [ "CC-BY-NC-ND-4.0" ];
  };
}
