
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosserial-client, rosserial-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosserial-tivac";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial_tivac/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "b124e1b25c3ca19bd0120d06a5a27240648de4be1b7261bcc8403fa034af2f28";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rosserial-client rosserial-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for TivaC Launchpad evaluation boards.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
