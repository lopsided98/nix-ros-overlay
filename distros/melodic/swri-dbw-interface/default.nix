
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-swri-dbw-interface";
  version = "2.12.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_dbw_interface/2.12.0-1.tar.gz";
    name = "2.12.0-1.tar.gz";
    sha256 = "ef016f0548e536183d6d51fae369f1a91d5d9816fdfdfb11fd15a2f164c4922e";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides documentation on common interface conventions for
    drive-by-wire systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
