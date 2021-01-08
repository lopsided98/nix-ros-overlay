
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, network-interface, roslint }:
buildRosPackage {
  pname = "ros-kinetic-ibeo-core";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/astuff/ibeo_core-release/archive/release/kinetic/ibeo_core/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "275bd68821463efc1c08862a53b86ce022dde3cabeb9e11ed830cf87ae58117f";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  propagatedBuildInputs = [ network-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ibeo_core package'';
    license = with lib.licenses; [ mit ];
  };
}
