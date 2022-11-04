
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-galactic-ruckig";
  version = "0.6.3-r1";

  src = fetchurl {
    url = "https://github.com/pantor/ruckig-release/archive/release/galactic/ruckig/0.6.3-1.tar.gz";
    name = "0.6.3-1.tar.gz";
    sha256 = "91750030501256e14e8c00f906a6dfb190f853de8cb7105113168cd24d9f3420";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Instantaneous Motion Generation for Robots and Machines.'';
    license = with lib.licenses; [ mit ];
  };
}
