
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-media-export";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/media_export-release/archive/release/kinetic/media_export/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "9cbc287753601f38919984b84ebeed52c9e69e4614d2e5a861e05f8ef6a08d13";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Placeholder package enabling generic export of media paths.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
