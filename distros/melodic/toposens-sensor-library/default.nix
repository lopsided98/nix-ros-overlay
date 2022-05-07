
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake }:
buildRosPackage {
  pname = "ros-melodic-toposens-sensor-library";
  version = "1.1.4-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-library-release/-/archive/release/melodic/toposens-sensor-library/1.1.4-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "040af85195cfdb9c9f9be372be53490f54b6998280de3d37f73b72265c993359";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ boost catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Driver for toposens echo sensor'';
    license = with lib.licenses; [ mit ];
  };
}
