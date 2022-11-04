
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake }:
buildRosPackage {
  pname = "ros-melodic-toposens-sensor-library";
  version = "1.2.4-r4";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-library-release/-/archive/release/melodic/toposens-sensor-library/1.2.4-4/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "c2388a269c1a3e4afa77bbfc7c683140d2ccf61bdd150e952cfa9d40662fd80e";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Driver for toposens echo sensor'';
    license = with lib.licenses; [ mit ];
  };
}
