
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-swri-dbw-interface";
  version = "2.12.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_dbw_interface/2.12.0-1.tar.gz";
    name = "2.12.0-1.tar.gz";
    sha256 = "cd39519644168fc339150da3f96accdc3b221da45dd9f31fd8ed2f907e782f8e";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides documentation on common interface conventions for
    drive-by-wire systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
