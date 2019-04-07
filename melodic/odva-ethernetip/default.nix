
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosunit, boost }:
buildRosPackage {
  pname = "ros-melodic-odva-ethernetip";
  version = "0.1.3";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/odva_ethernetip-release/archive/release/melodic/odva_ethernetip/0.1.3-0.tar.gz;
    sha256 = "41362528d6a0cbefa2cd8120373ecbb2a30182fda78ea9c49341c78874130c24";
  };

  buildInputs = [ boost ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library implementing ODVA EtherNet/IP (Industrial Protocol).'';
    #license = lib.licenses.BSD;
  };
}
