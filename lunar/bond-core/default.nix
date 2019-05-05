
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bondcpp, bondpy, catkin, smclib, bond }:
buildRosPackage {
  pname = "ros-lunar-bond-core";
  version = "1.8.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/bond_core-release/archive/release/lunar/bond_core/1.8.3-0.tar.gz;
    sha256 = "e3358a23cdb5767709d4cb33ccfc0340a21438b799e7c4fa55a0374eccdb2e9a";
  };

  propagatedBuildInputs = [ bondcpp bondpy bond smclib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A bond allows two processes, A and B, to know when the other has
    terminated, either cleanly or by crashing. The bond remains
    connected until it is either broken explicitly or until a
    heartbeat times out.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
