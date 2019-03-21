
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bondcpp, bondpy, catkin, smclib, bond }:
buildRosPackage {
  pname = "ros-kinetic-bond-core";
  version = "1.8.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/bond_core-release/archive/release/kinetic/bond_core/1.8.3-0.tar.gz;
    sha256 = "2dbaf896369b27180c38ad10b15f5be336c5be05e90513fe947c1e55e78d6d11";
  };

  propagatedBuildInputs = [ bondcpp bondpy bond smclib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A bond allows two processes, A and B, to know when the other has
    terminated, either cleanly or by crashing. The bond remains
    connected until it is either broken explicitly or until a
    heartbeat times out.'';
    #license = lib.licenses.BSD;
  };
}
