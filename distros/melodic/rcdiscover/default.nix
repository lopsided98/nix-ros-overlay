
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake }:
buildRosPackage {
  pname = "ros-melodic-rcdiscover";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rcdiscover-release/archive/release/melodic/rcdiscover/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "ce3eec02147055dfd98d8e5cf830b634ce6c72bef9ac06c1310bcb46b0fa86a2";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains tools for the discovery of rc_visard sensors via GigE Vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
