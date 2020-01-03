
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake }:
buildRosPackage {
  pname = "ros-melodic-rcdiscover";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rcdiscover-release/archive/release/melodic/rcdiscover/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "43fdfa6280e76ad07d45bf32e7e1e08ee91f161bfef9605765758ef8a51e5b13";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains tools for the discovery of rc_visard sensors via GigE Vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
