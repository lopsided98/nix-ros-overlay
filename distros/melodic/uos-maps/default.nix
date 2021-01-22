
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-uos-maps";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/uos-tools/archive/release/melodic/uos_maps/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "31a5e6d9a32f503c309b3affeb2ec5034ca6b874603c53702be6d7b965c65c38";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Navigation maps of the Osnabrueck University'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
