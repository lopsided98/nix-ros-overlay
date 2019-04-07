
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, libpng12 }:
buildRosPackage {
  pname = "ros-melodic-multisense-lib";
  version = "4.0.2";

  src = fetchurl {
    url = https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/melodic/multisense_lib/4.0.2-0.tar.gz;
    sha256 = "61da457dbdd57bfa74ac34de1523552ddb166945e81b648107bcaa7ef2eb7686";
  };

  buildInputs = [ cv-bridge libpng12 ];
  propagatedBuildInputs = [ cv-bridge libpng12 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense_lib'';
    #license = lib.licenses.BSD;
  };
}
