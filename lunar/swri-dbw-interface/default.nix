
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-swri-dbw-interface";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/lunar/swri_dbw_interface/2.8.0-0.tar.gz;
    sha256 = "b2219feb0ec6524e284008df7cd95f9d56d7c4b004ac77e83ada80cee566eb48";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides documentation on common interface conventions for
    drive-by-wire systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
