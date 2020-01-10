
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-media-export";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/media_export-release/archive/release/kinetic/media_export/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "5e0eb9f4064277d11d28778f9b50391a6330c0716ee21a6bf30dac94fd8d165a";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Placeholder package enabling generic export of media paths.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
