
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, console-bridge, catkin, rosunit, boost }:
buildRosPackage {
  pname = "ros-melodic-odva-ethernetip";
  version = "0.1.4";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/odva_ethernetip-release/archive/release/melodic/odva_ethernetip/0.1.4-0.tar.gz;
    sha256 = "5ab751b07939ccd1fb02691e6d370dcf721b38371208efe92e9ec7d507481c7a";
  };

  buildInputs = [ console-bridge boost ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ console-bridge boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library implementing ODVA EtherNet/IP (Industrial Protocol).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
