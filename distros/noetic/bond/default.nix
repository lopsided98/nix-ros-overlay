
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-bond";
  version = "1.8.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/bond_core-release/archive/release/noetic/bond/1.8.7-1.tar.gz";
    name = "1.8.7-1.tar.gz";
    sha256 = "4a98d1671d4af71fb585b3ae2faac6d74bb9fe1d4645109f1c25a0120899f84f";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "A bond allows two processes, A and B, to know when the other has
    terminated, either cleanly or by crashing.  The bond remains
    connected until it is either broken explicitly or until a
    heartbeat times out.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
