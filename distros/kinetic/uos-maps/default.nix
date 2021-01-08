
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-uos-maps";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/uos-tools/archive/release/kinetic/uos_maps/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "73a8406a83ef53fd734c0e19abbe0a7244f416c92911b2e2e90b35b53162b48b";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Navigation maps of the Osnabrueck University'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
