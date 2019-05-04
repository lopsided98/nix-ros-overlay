
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosserial-msgs, rosserial-client }:
buildRosPackage {
  pname = "ros-kinetic-rosserial-tivac";
  version = "0.7.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/rosserial-release/archive/release/kinetic/rosserial_tivac/0.7.7-0.tar.gz;
    sha256 = "379b333e6972583e884bd30d5a2d07f5b5cc341a560e6828eb802286c1dea1a8";
  };

  propagatedBuildInputs = [ rosserial-msgs rosserial-client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for TivaC Launchpad evaluation boards.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
