
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-uos-maps";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/uos-tools/archive/release/melodic/uos_maps/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "2ab21963ff350773c0f0f8bc4b3db7a038aaa614e8655d5a24c85f0f052d6441";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Navigation maps of the Osnabrueck University'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
