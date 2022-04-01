
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake }:
buildRosPackage {
  pname = "ros-noetic-toposens-sensor-library";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-library-release/-/archive/release/noetic/toposens-sensor-library/1.1.3-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "e17bd3510385845d7038cc633ba4602ee410c6f75b33a09d86944d8fb764091a";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ boost catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Driver for toposens echo sensor'';
    license = with lib.licenses; [ bsd3 ];
  };
}
