
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake }:
buildRosPackage {
  pname = "ros-noetic-toposens-sensor-library";
  version = "1.1.4-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-library-release/-/archive/release/noetic/toposens-sensor-library/1.1.4-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "83edaf16652efd206c158c95710959da959870520a0212c6116be79bf58d9991";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ boost catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Driver for toposens echo sensor'';
    license = with lib.licenses; [ mit ];
  };
}
