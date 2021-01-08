
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, console-bridge, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-odva-ethernetip";
  version = "0.1.4";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/odva_ethernetip-release/archive/release/kinetic/odva_ethernetip/0.1.4-0.tar.gz";
    name = "0.1.4-0.tar.gz";
    sha256 = "3989dd0c9fe6e06337d815385beb14ef3a0f97336855b186a052fe647161d51b";
  };

  buildType = "catkin";
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ boost console-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library implementing ODVA EtherNet/IP (Industrial Protocol).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
