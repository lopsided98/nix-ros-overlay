
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-melodic-ruckig";
  version = "0.6.3-r1";

  src = fetchurl {
    url = "https://github.com/pantor/ruckig-release/archive/release/melodic/ruckig/0.6.3-1.tar.gz";
    name = "0.6.3-1.tar.gz";
    sha256 = "2d91a730efc4c1c7452b085d98caadfabedd9da926c75b3f8a1cb8f3d430f268";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Instantaneous Motion Generation for Robots and Machines.'';
    license = with lib.licenses; [ mit ];
  };
}
