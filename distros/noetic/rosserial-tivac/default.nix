
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosserial-client, rosserial-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosserial-tivac";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial_tivac/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "0c7e20dff364e12f953a53d7f55f75e2c0f999f9e4c3ac66f609bc2637e5a7f2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosserial-client rosserial-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for TivaC Launchpad evaluation boards.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
