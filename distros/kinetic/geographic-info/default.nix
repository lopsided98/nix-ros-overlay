
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geodesy, geographic-msgs }:
buildRosPackage {
  pname = "ros-kinetic-geographic-info";
  version = "0.5.2";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/geographic_info-release/archive/release/kinetic/geographic_info/0.5.2-0.tar.gz";
    name = "0.5.2-0.tar.gz";
    sha256 = "d48283a19ec7929cb22cccbb524dc6dce692f97608e980bf92292179d0411d6c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geodesy geographic-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Geographic information metapackage.

    Not needed for wet packages, use only to resolve dry stack
    dependencies.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
