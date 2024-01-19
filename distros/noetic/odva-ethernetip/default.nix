
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, console-bridge, rosunit }:
buildRosPackage {
  pname = "ros-noetic-odva-ethernetip";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/odva_ethernetip-release/archive/release/noetic/odva_ethernetip/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "39e9f63175a38fe6ea8ff1e4953f9fbfbb9bcd616f6a7a962d7aa7d3471b8863";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ boost console-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library implementing ODVA EtherNet/IP (Industrial Protocol).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
