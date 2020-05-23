
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-bond";
  version = "1.8.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/bond_core-release/archive/release/noetic/bond/1.8.5-1.tar.gz";
    name = "1.8.5-1.tar.gz";
    sha256 = "205c4045f6f792e9b56f5deabdf147ae0d75074b56414eab142c6ca00a94e180";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A bond allows two processes, A and B, to know when the other has
    terminated, either cleanly or by crashing.  The bond remains
    connected until it is either broken explicitly or until a
    heartbeat times out.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
