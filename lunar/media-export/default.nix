
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-media-export";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/media_export-release/archive/release/lunar/media_export/0.2.0-0.tar.gz;
    sha256 = "7844eebcffe91baa46928e6ba28a4e4c5662d012adbadd13974a3d4139a3d395";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Placeholder package enabling generic export of media paths.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
