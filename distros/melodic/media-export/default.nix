
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-media-export";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/media_export-release/archive/release/melodic/media_export/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "36831d912cd432fa1c4dcf0b50898c9cf579eaf33ee76f88e049c76bee08fff6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Placeholder package enabling generic export of media paths.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
