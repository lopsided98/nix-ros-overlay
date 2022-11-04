
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-foxy-ruckig";
  version = "0.6.3-r1";

  src = fetchurl {
    url = "https://github.com/pantor/ruckig-release/archive/release/foxy/ruckig/0.6.3-1.tar.gz";
    name = "0.6.3-1.tar.gz";
    sha256 = "cff3d3db056f7026f298f4b87c843781ceeec72947f706d1f861d69a96aed9a4";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Instantaneous Motion Generation for Robots and Machines.'';
    license = with lib.licenses; [ mit ];
  };
}
