
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-swri-dbw-interface";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_dbw_interface/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "65af3b3003f55aefac82347430e7a760dbe994645aa431b1c983fecfc38fc466";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides documentation on common interface conventions for
    drive-by-wire systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
