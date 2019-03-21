
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, asio }:
buildRosPackage {
  pname = "ros-kinetic-msp";
  version = "2.2.1-r1";

  src = fetchurl {
    url = https://github.com/christianrauch/msp-release/archive/release/kinetic/msp/2.2.1-1.tar.gz;
    sha256 = "aae98cb60d11d1c32809e0f6660157a6af15f5e82767eb180241243df5098ee4";
  };

  nativeBuildInputs = [ cmake asio ];

  meta = {
    description = ''Implementation of the MultiWii Serial Protocol (MSP)'';
    #license = lib.licenses.LGPLv3;
  };
}
